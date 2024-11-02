.class public final Lcom/android/systemui/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mIsAdaptiveColorMode:Z = false

.field public static mIsAdaptiveColorModeSub:Z = false

.field public static mIsEmergencyMode:Z = false

.field public static final mIsLiveWallpaper:[Z

.field public static mIsUltraPowerSavingMode:Z = false

.field public static mSettingsHelper:Lcom/android/systemui/util/SettingsHelper; = null

.field public static final sCachedSmartCroppedRect:Landroid/util/SparseArray;

.field public static final sCachedWallpaper:Landroid/util/SparseArray;

.field public static final sCachedWallpaperColors:Landroid/util/SparseArray;

.field public static sCurrentWhich:I = 0x0

.field public static sDrawState:Z = false

.field public static sLastAmount:F

.field public static sScreenDensityRateFromBase:F

.field public static final sWallpaperType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Z

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsLiveWallpaper:[Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    sput v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sLastAmount:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    .line 14
    .line 15
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    .line 16
    .line 17
    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaper:Landroid/util/SparseArray;

    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance v0, Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    filled-new-array {v0, v0}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPreviewVisibility(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1, v2}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-wide/16 v2, 0x20

    .line 9
    .line 10
    invoke-virtual {p0, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 19
    .line 20
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    invoke-direct {p1, p0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v2, Landroid/graphics/Canvas;

    .line 33
    .line 34
    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    div-int/2addr v5, v0

    .line 56
    invoke-direct {p1, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    div-int/2addr v6, v0

    .line 70
    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "applyPreviewVisibility 0x"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "WallpaperUtils"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return-object p2
.end method

.method public static clearCachedSmartCroppedRect(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static clearCachedWallpaper(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(Landroid/graphics/Bitmap;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_9

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v3, v1

    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float v5, v3, v4

    .line 24
    .line 25
    int-to-float v6, v2

    .line 26
    div-float v7, v6, v4

    .line 27
    .line 28
    mul-int v8, v1, p2

    .line 29
    .line 30
    mul-int v9, p1, v2

    .line 31
    .line 32
    const/high16 v10, 0x3f800000    # 1.0f

    .line 33
    .line 34
    if-le v8, v9, :cond_1

    .line 35
    .line 36
    int-to-float v3, p2

    .line 37
    div-float/2addr v3, v6

    .line 38
    mul-float/2addr v3, v10

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    int-to-float v6, p1

    .line 41
    div-float/2addr v6, v3

    .line 42
    mul-float v3, v6, v10

    .line 43
    .line 44
    :goto_0
    const-string v6, "metricsHeight="

    .line 45
    .line 46
    const-string v8, " metricsWidth="

    .line 47
    .line 48
    const-string v9, "WallpaperUtils"

    .line 49
    .line 50
    invoke-static {v6, p2, v8, p1, v9}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    int-to-float v6, p1

    .line 54
    mul-float/2addr v6, v10

    .line 55
    div-float/2addr v6, v3

    .line 56
    int-to-float v8, p2

    .line 57
    mul-float/2addr v8, v10

    .line 58
    div-float/2addr v8, v3

    .line 59
    div-float v10, v6, v4

    .line 60
    .line 61
    sub-float v10, v5, v10

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    cmpg-float v12, v10, v11

    .line 65
    .line 66
    if-gez v12, :cond_2

    .line 67
    .line 68
    move v10, v11

    .line 69
    :cond_2
    div-float v4, v8, v4

    .line 70
    .line 71
    sub-float v4, v7, v4

    .line 72
    .line 73
    cmpg-float v12, v4, v11

    .line 74
    .line 75
    if-gez v12, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v11, v4

    .line 79
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v12, "widthOrigin = "

    .line 82
    .line 83
    .line 84
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v12, "heightOrigin = "

    .line 100
    .line 101
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string/jumbo v12, "scale = "

    .line 117
    .line 118
    .line 119
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "centerX = "

    .line 135
    .line 136
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v4, "centerY = "

    .line 152
    .line 153
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string/jumbo v4, "startX = "

    .line 169
    .line 170
    .line 171
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string/jumbo v4, "startY = "

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string/jumbo v4, "width = "

    .line 205
    .line 206
    .line 207
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v4, "height = "

    .line 223
    .line 224
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_4

    .line 242
    .line 243
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-nez v3, :cond_4

    .line 248
    .line 249
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-ne v1, v3, :cond_4

    .line 254
    .line 255
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-ne v2, v3, :cond_4

    .line 260
    .line 261
    const-string p1, "It doesn\'t need to crop bitmap"

    .line 262
    .line 263
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    return-object p0

    .line 267
    :cond_4
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    const/4 v4, 0x1

    .line 272
    if-lt v3, v4, :cond_8

    .line 273
    .line 274
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-lt v3, v4, :cond_8

    .line 279
    .line 280
    if-lt p1, v4, :cond_8

    .line 281
    .line 282
    if-ge p2, v4, :cond_5

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    add-int/2addr p2, p1

    .line 294
    if-gt p2, v1, :cond_7

    .line 295
    .line 296
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    add-int/2addr p2, p1

    .line 305
    if-le p2, v2, :cond_6

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_6
    const-string p1, "Cropping..."

    .line 309
    .line 310
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-static {p0, p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    return-object p0

    .line 334
    :cond_7
    :goto_2
    const-string p0, "Calculated crop size error"

    .line 335
    .line 336
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    return-object v0

    .line 340
    :cond_8
    :goto_3
    const-string p0, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    .line 341
    .line 342
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    :cond_9
    :goto_4
    return-object v0
.end method

.method public static decodeStreamConsiderQMG(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    const/16 v6, 0x51

    .line 24
    .line 25
    if-ne v4, v6, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x47

    .line 28
    .line 29
    if-ne v5, v4, :cond_0

    .line 30
    .line 31
    move v4, v3

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v4

    .line 34
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    move v4, v2

    .line 38
    :goto_0
    const-string v5, "decodeStream() bitmap is null"

    .line 39
    .line 40
    const-string v6, "WallpaperUtils"

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :try_start_1
    const-string v7, "android.graphics.BitmapFactory"

    .line 46
    .line 47
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const-string v8, "decodeStreamQMG"

    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    new-array v9, v9, [Ljava/lang/Class;

    .line 55
    .line 56
    const-class v10, Ljava/io/InputStream;

    .line 57
    .line 58
    aput-object v10, v9, v2

    .line 59
    .line 60
    const-class v2, Landroid/graphics/Rect;

    .line 61
    .line 62
    aput-object v2, v9, v3

    .line 63
    .line 64
    const-class v2, Landroid/graphics/BitmapFactory$Options;

    .line 65
    .line 66
    aput-object v2, v9, v1

    .line 67
    .line 68
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    .line 74
    .line 75
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    :try_start_2
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 88
    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    const-string v2, "decodeStreamQMG() bitmap is null"

    .line 92
    .line 93
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_1
    move-exception p1

    .line 98
    move-object v4, v1

    .line 99
    goto :goto_1

    .line 100
    :catch_2
    move-exception p1

    .line 101
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    move-object v1, v4

    .line 105
    goto :goto_2

    .line 106
    :catch_3
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    iget-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    .line 114
    if-nez p1, :cond_2

    .line 115
    .line 116
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_2

    .line 125
    .line 126
    iget-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 127
    .line 128
    if-nez p1, :cond_2

    .line 129
    .line 130
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_4
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :goto_3
    return-object v1
.end method

.method public static getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float p2, p2

    .line 24
    const v3, 0x3dcccccd    # 0.1f

    .line 25
    .line 26
    .line 27
    mul-float/2addr p2, v3

    .line 28
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    int-to-float p3, p3

    .line 33
    mul-float/2addr p3, v3

    .line 34
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-gt v0, p2, :cond_1

    .line 39
    .line 40
    if-le v1, p3, :cond_2

    .line 41
    .line 42
    :cond_1
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object p2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 51
    .line 52
    invoke-static {p0, p1, p2, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p0, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/high16 v1, 0x41c80000    # 25.0f

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->destroy()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Landroid/renderscript/RSRuntimeException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-object p1
.end method

.method public static getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/16 p0, 0x10

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x4

    .line 23
    :goto_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/app/SemWallpaperColors;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static getCachedSmartCroppedRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedSmartCroppedRect:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/graphics/Rect;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getCachedWallpaper(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    and-int/lit8 p0, p0, -0x5

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaper:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-object p0
.end method

.method public static getFolderStateBasedWhich(ILandroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getLidState()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    or-int/lit8 p0, p0, 0x10

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    or-int/lit8 p0, p0, 0x4

    .line 19
    .line 20
    :cond_1
    :goto_0
    return p0
.end method

.method public static getLogicalDisplaySize(Landroid/content/Context;)Landroid/util/Size;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    const-string/jumbo v3, "window"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/view/WindowManager;

    .line 27
    .line 28
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v3, Landroid/graphics/Point;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 38
    .line 39
    .line 40
    iget p0, v3, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-ne v0, v4, :cond_0

    .line 48
    .line 49
    move v0, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    if-ne v2, v4, :cond_2

    .line 58
    .line 59
    move v5, p0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v5, v3

    .line 62
    :goto_1
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-ne v2, v4, :cond_4

    .line 68
    .line 69
    move p0, v3

    .line 70
    :cond_4
    :goto_2
    const-string v0, "getLogicalDisplaySize: "

    .line 71
    .line 72
    const-string v3, " x "

    .line 73
    .line 74
    const-string v4, " dm "

    .line 75
    .line 76
    invoke-static {v0, v5, v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, " orientation:"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "WallpaperUtils"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    new-instance v0, Landroid/util/Size;

    .line 111
    .line 112
    invoke-direct {v0, v5, p0}, Landroid/util/Size;-><init>(II)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public static varargs getPhysicalDisplaySizes([Landroid/view/Display;)[Landroid/util/Size;
    .locals 14

    .line 1
    const-string v0, "getPhysicalDisplaySizes: "

    .line 2
    .line 3
    const-string v1, "WallpaperUtils"

    .line 4
    .line 5
    array-length v2, p0

    .line 6
    new-array v2, v2, [Landroid/util/Size;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    .line 10
    .line 11
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "checkService"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    new-array v7, v6, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v8, Ljava/lang/String;

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    aput-object v8, v7, v9

    .line 24
    .line 25
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-array v5, v6, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string/jumbo v7, "window"

    .line 32
    .line 33
    .line 34
    aput-object v7, v5, v9

    .line 35
    .line 36
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "android.view.IWindowManager$Stub"

    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v7, "asInterface"

    .line 47
    .line 48
    new-array v8, v6, [Ljava/lang/Class;

    .line 49
    .line 50
    const-class v10, Landroid/os/IBinder;

    .line 51
    .line 52
    aput-object v10, v8, v9

    .line 53
    .line 54
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "android.view.IWindowManager"

    .line 67
    .line 68
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v7, "getInitialDisplaySize"

    .line 73
    .line 74
    const/4 v8, 0x2

    .line 75
    new-array v10, v8, [Ljava/lang/Class;

    .line 76
    .line 77
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v11, v10, v9

    .line 80
    .line 81
    const-class v11, Landroid/graphics/Point;

    .line 82
    .line 83
    aput-object v11, v10, v6

    .line 84
    .line 85
    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move v7, v9

    .line 90
    :goto_0
    array-length v10, p0

    .line 91
    if-ge v7, v10, :cond_0

    .line 92
    .line 93
    aget-object v10, p0, v7

    .line 94
    .line 95
    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    new-instance v11, Landroid/graphics/Point;

    .line 100
    .line 101
    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 102
    .line 103
    .line 104
    new-array v12, v8, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    aput-object v13, v12, v9

    .line 111
    .line 112
    aput-object v11, v12, v6

    .line 113
    .line 114
    invoke-virtual {v5, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v10, " "

    .line 129
    .line 130
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    new-instance v10, Landroid/util/Size;

    .line 144
    .line 145
    iget v12, v11, Landroid/graphics/Point;->x:I

    .line 146
    .line 147
    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 148
    .line 149
    invoke-direct {v10, v12, v11}, Landroid/util/Size;-><init>(II)V

    .line 150
    .line 151
    .line 152
    aput-object v10, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    add-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    return-object v2

    .line 158
    :catch_0
    move-exception p0

    .line 159
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    return-object v3
.end method

.method public static getRealScreenSize(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 6

    .line 1
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Point;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const-string p0, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    array-length p1, p0

    .line 28
    move v0, v2

    .line 29
    :goto_0
    if-ge v0, p1, :cond_3

    .line 30
    .line 31
    aget-object v3, p0, v0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-ne v4, v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    const-string p0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    array-length p1, p0

    .line 57
    if-lez p1, :cond_3

    .line 58
    .line 59
    aget-object p0, p0, v2

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p1, "getScreenSize: "

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-array p1, v2, [Ljava/lang/Object;

    .line 87
    .line 88
    const-string v0, "WallpaperUtils"

    .line 89
    .line 90
    invoke-static {v0, p0, p1}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method

.method public static getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/16 p1, 0x5a

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x10e

    .line 8
    .line 9
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    .line 10
    .line 11
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    .line 13
    .line 14
    neg-int p1, p1

    .line 15
    int-to-float p1, p1

    .line 16
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v6, 0x1

    .line 30
    move-object v0, p0

    .line 31
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static getScreenShot(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    const-string/jumbo v0, "window"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getScreenShot: start, width = "

    .line 15
    .line 16
    const-string v2, " , height = "

    .line 17
    .line 18
    const-string v3, " , mRotation = "

    .line 19
    .line 20
    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v10, "WallpaperUtils"

    .line 32
    .line 33
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v3, 0x0

    .line 53
    new-instance v4, Landroid/graphics/Rect;

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    invoke-direct {v4, p0, p0, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x1

    .line 62
    move v2, p4

    .line 63
    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p2, "getScreenShot: end bitmap = "

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    if-eqz p3, :cond_0

    .line 85
    .line 86
    if-eqz p0, :cond_0

    .line 87
    .line 88
    invoke-static {p0, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    .line 94
    .line 95
    move-object p0, p1

    .line 96
    :cond_0
    return-object p0
.end method

.method public static getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 5

    .line 1
    const-string v0, "getVideoFDFromPackage() pkgName = "

    .line 2
    .line 3
    const-string v1, "WallpaperUtils"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_6

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "Can not found package name"

    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-object p0, v0

    .line 30
    :goto_0
    if-nez p0, :cond_2

    .line 31
    .line 32
    new-instance p0, Landroid/content/APKContents;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {p0, v3}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0}, Landroid/content/APKContents;->getAssets()Landroid/content/res/AssetManager;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    :cond_1
    const-string p0, "getVideoFDFromPackage() otherContext is null"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_3
    :try_start_1
    const-string v4, "com.samsung.android.wallpaper.res"

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    const/16 p0, 0x2e

    .line 76
    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p2, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string/jumbo p2, "raw"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p0, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_4
    if-nez p0, :cond_5

    .line 98
    .line 99
    const-string p0, "getVideoFDFromPackage() assetManager is null"

    .line 100
    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 106
    .line 107
    .line 108
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    return-object p0

    .line 110
    :catch_1
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_1
    return-object v0
.end method

.method public static getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 7
    .line 8
    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v6, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    move-object v0, v6

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz p3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v6, p0, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 51
    invoke-virtual {v6, p4, p5, p0, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-object p0

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_2
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_2
    const/4 p0, 0x0

    .line 77
    return-object p0

    .line 78
    :catchall_3
    move-exception p0

    .line 79
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_4
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :goto_3
    throw p0
.end method

.method public static getWallpaperType()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    .line 12
    return v0
.end method

.method public static isAODShowLockWallpaperAndLockDisabled(ILandroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static isAODShowLockWallpaperEnabled()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v2, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 28
    .line 29
    const-string v2, "aod_show_lockscreen_wallpaper"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    move v1, v3

    .line 55
    :cond_2
    return v1
.end method

.method public static isCachedWallpaperAvailable(I)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p0, -0x5

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const-string v1, "WallpaperUtils"

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "isCachedWallpaperAvailable cached wallpaper is null. which = "

    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "isCachedWallpaperAvailable cached wallpaper is recycled. which = "

    .line 34
    .line 35
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static isCarUiMode(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-class v0, Landroid/app/UiModeManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/UiModeManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getActiveProjectionTypes()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const-string v0, "isCarUiMode type = "

    .line 14
    .line 15
    const-string v1, "WallpaperUtils"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    and-int/2addr p0, v0

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public static isCoverScreen(I)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    and-int/lit8 p0, p0, 0x10

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    :goto_0
    return v1

    .line 18
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    and-int/lit8 v0, p0, 0x2

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    and-int/lit8 p0, p0, 0x20

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :goto_1
    return v1

    .line 33
    :cond_3
    return v2
.end method

.method public static isDexStandAloneMode()Z
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "isDexStandAloneMode: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "WallpaperUtils"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    return v0
.end method

.method public static isEnableTilt(Landroid/content/Context;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eq v1, v3, :cond_2

    .line 16
    .line 17
    const/4 v6, -0x1

    .line 18
    if-ne v1, v6, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v4}, Landroid/app/WallpaperManager;->getDefaultWallpaperType(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v3, :cond_0

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v5

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v4}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v2, v5

    .line 46
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 47
    .line 48
    const-string p0, "WallpaperUtils"

    .line 49
    .line 50
    const-string v0, "isEnableTilt: false (multipack is not applied.)"

    .line 51
    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v5

    .line 56
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_4

    .line 61
    .line 62
    return v5

    .line 63
    :cond_4
    const-string/jumbo v0, "tilt"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_2
    return v5
.end method

.method public static isExternalLiveWallpaper()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled(Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public static isLiveWallpaperAppliedOnLock(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x7

    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x10

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v0, 0x4

    .line 33
    :goto_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->isSystemAndLockPaired(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-ne p0, v3, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v1, v2

    .line 52
    :goto_2
    return v1

    .line 53
    :cond_4
    return v2
.end method

.method public static isLiveWallpaperEnabled()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    and-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static isLiveWallpaperEnabled(Z)Z
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsLiveWallpaper:[Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4
    aget-boolean p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 5
    aget-boolean p0, v0, p0

    return p0
.end method

.method public static isMainScreenRatio(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-float p1, v1

    .line 16
    int-to-float p0, p0

    .line 17
    div-float/2addr p1, p0

    .line 18
    const/high16 p0, 0x40000000    # 2.0f

    .line 19
    .line 20
    cmpl-float p0, p1, p0

    .line 21
    .line 22
    if-lez p0, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_2
    :goto_0
    return v0
.end method

.method public static isOpenThemeLook()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object p1, v1

    .line 14
    :goto_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_2
    const-string p1, "WallpaperUtils"

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v2, v3

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v4, "updateStatusBarHeight - dc = "

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v2, -0x1

    .line 53
    :goto_1
    const-string v1, "Height from dc = "

    .line 54
    .line 55
    invoke-static {v1, v2, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-gtz v2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const v1, 0x1050501

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const-string p0, "Height from resource = "

    .line 72
    .line 73
    invoke-static {p0, v2, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v1, "statusbar statusBarSize = "

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", view height = "

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    if-ne p2, v2, :cond_5

    .line 103
    .line 104
    const/4 p0, 0x1

    .line 105
    return p0

    .line 106
    :cond_5
    return v0
.end method

.method public static isSubDisplay()Z
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSubDisplay(I)Z
    .locals 1

    .line 1
    and-int/lit8 p0, p0, 0x3c

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoWallpaper()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x12

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x6

    .line 18
    :goto_0
    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 19
    .line 20
    aget v0, v2, v0

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v0, v2, :cond_4

    .line 26
    .line 27
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v1, v1, 0x3c

    .line 33
    .line 34
    const/16 v2, 0x10

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string/jumbo v1, "plugin_lock_wallpaper_type_sub"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const-string/jumbo v1, "plugin_lock_wallpaper_type"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_2
    const/4 v1, 0x2

    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    move v3, v4

    .line 74
    :cond_4
    :goto_3
    return v3
.end method

.method public static isWhiteKeyguardWallpaper(J)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(JZ)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    move v1, p1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method public static isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 4

    .line 4
    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(J)Z

    move-result p0

    return p0
.end method

.method public static loadDeviceState(ILandroid/content/Context;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(ILandroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 17
    .line 18
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x6

    .line 25
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    sget-object v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaperColors:Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v6, 0x4

    .line 32
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/16 v4, 0x12

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/16 v7, 0x10

    .line 42
    .line 43
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sget-object v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->sWallpaperType:[I

    .line 51
    .line 52
    aput v3, v5, v1

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    aput v0, v5, v2

    .line 59
    .line 60
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 71
    .line 72
    or-int/lit8 v0, v0, 0x8

    .line 73
    .line 74
    and-int/lit8 v0, v0, -0x5

    .line 75
    .line 76
    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v3, "emergency_mode"

    .line 83
    .line 84
    invoke-static {v0, v3, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v2, :cond_2

    .line 89
    .line 90
    move v0, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v0, v1

    .line 93
    :goto_0
    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string/jumbo v3, "ultra_powersaving_mode"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v3, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "minimal_battery_use"

    .line 111
    .line 112
    invoke-static {v3, v4, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eq v0, v2, :cond_4

    .line 117
    .line 118
    if-ne v3, v2, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move v0, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    :goto_1
    move v0, v2

    .line 124
    :goto_2
    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    .line 125
    .line 126
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    .line 133
    .line 134
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 141
    .line 142
    const-string v3, "lock_adaptive_color_sub"

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    move v1, v2

    .line 155
    :cond_5
    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorModeSub:Z

    .line 156
    .line 157
    :cond_6
    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadLiveWallpaperSettings(ILandroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static loadLiveWallpaperSettings(ILandroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsLiveWallpaper:[Z

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "lockscreen_wallpaper"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    aput-boolean v1, v0, v2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "lockscreen_wallpaper_sub"

    .line 27
    .line 28
    invoke-static {p1, v1, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_1
    aput-boolean v2, v0, v3

    .line 36
    .line 37
    return-void
.end method

.method public static registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    cmp-long v2, p1, v2

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    or-long/2addr p1, v2

    .line 17
    :cond_1
    const-wide/16 v2, 0x20

    .line 18
    .line 19
    and-long/2addr v2, p1

    .line 20
    cmp-long v0, v2, v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-wide/16 v0, 0x2

    .line 25
    .line 26
    or-long/2addr p1, v0

    .line 27
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method public static removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static setCachedWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    and-int/lit8 p1, p1, -0x5

    .line 2
    .line 3
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCachedWallpaper:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setScaledView(FLandroid/view/View;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, p0

    .line 6
    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne v1, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v1, v0, :cond_0

    .line 35
    .line 36
    const-string p0, "WallpaperUtils"

    .line 37
    .line 38
    const-string/jumbo p1, "setScaledView: skip"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    move-object v0, p1

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    move v3, v1

    .line 58
    :goto_0
    if-ge v3, v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {p0, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setScaledView(FLandroid/view/View;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    mul-float/2addr v2, p0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    .line 93
    if-lez v2, :cond_3

    .line 94
    .line 95
    int-to-float v2, v2

    .line 96
    mul-float/2addr v2, p0

    .line 97
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    .line 103
    :cond_3
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    .line 105
    if-lez v2, :cond_4

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    mul-float/2addr v2, p0

    .line 109
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .line 115
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-lez v2, :cond_5

    .line 124
    .line 125
    int-to-float v2, v2

    .line 126
    mul-float/2addr v2, p0

    .line 127
    float-to-int v2, v2

    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 129
    .line 130
    .line 131
    instance-of v4, p1, Landroid/widget/TextView;

    .line 132
    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    move-object v4, p1

    .line 136
    check-cast v4, Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 139
    .line 140
    .line 141
    :cond_5
    if-lez v3, :cond_6

    .line 142
    .line 143
    int-to-float v2, v3

    .line 144
    mul-float/2addr v2, p0

    .line 145
    float-to-int v2, v2

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 147
    .line 148
    .line 149
    instance-of v3, p1, Landroid/widget/TextView;

    .line 150
    .line 151
    if-eqz v3, :cond_6

    .line 152
    .line 153
    move-object v3, p1

    .line 154
    check-cast v3, Landroid/widget/TextView;

    .line 155
    .line 156
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 157
    .line 158
    .line 159
    :cond_6
    if-eqz v0, :cond_8

    .line 160
    .line 161
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 162
    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 170
    .line 171
    new-instance v2, Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_7

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    int-to-float v3, v3

    .line 187
    mul-float/2addr v3, p0

    .line 188
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 193
    .line 194
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 195
    .line 196
    int-to-float v3, v3

    .line 197
    mul-float/2addr v3, p0

    .line 198
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    int-to-float v3, v3

    .line 209
    mul-float/2addr v3, p0

    .line 210
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 215
    .line 216
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 217
    .line 218
    int-to-float v3, v3

    .line 219
    mul-float/2addr v3, p0

    .line 220
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 225
    .line 226
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 227
    .line 228
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 229
    .line 230
    .line 231
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 234
    .line 235
    .line 236
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 237
    .line 238
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 239
    .line 240
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 241
    .line 242
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 243
    .line 244
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_7
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 249
    .line 250
    int-to-float v3, v3

    .line 251
    mul-float/2addr v3, p0

    .line 252
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 257
    .line 258
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 259
    .line 260
    int-to-float v3, v3

    .line 261
    mul-float/2addr v3, p0

    .line 262
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 267
    .line 268
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 269
    .line 270
    int-to-float v3, v3

    .line 271
    mul-float/2addr v3, p0

    .line 272
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 277
    .line 278
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 279
    .line 280
    int-to-float v3, v3

    .line 281
    mul-float/2addr v3, p0

    .line 282
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 287
    .line 288
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 289
    .line 290
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 291
    .line 292
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 293
    .line 294
    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 295
    .line 296
    .line 297
    :cond_8
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    .line 298
    .line 299
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->isPaddingRelative()Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    const/4 v3, 0x1

    .line 307
    if-eqz v2, :cond_b

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    int-to-float v2, v2

    .line 314
    mul-float/2addr v2, p0

    .line 315
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 320
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    int-to-float v2, v2

    .line 326
    mul-float/2addr v2, p0

    .line 327
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    int-to-float v2, v2

    .line 338
    mul-float/2addr v2, p0

    .line 339
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    int-to-float v2, v2

    .line 350
    mul-float/2addr v2, p0

    .line 351
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 352
    .line 353
    .line 354
    move-result p0

    .line 355
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 356
    .line 357
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-ne p0, v2, :cond_9

    .line 364
    .line 365
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-ne p0, v2, :cond_9

    .line 372
    .line 373
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-ne p0, v2, :cond_9

    .line 380
    .line 381
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eq p0, v2, :cond_a

    .line 388
    .line 389
    :cond_9
    move v1, v3

    .line 390
    :cond_a
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 391
    .line 392
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 393
    .line 394
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 395
    .line 396
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 397
    .line 398
    invoke-virtual {p1, p0, v2, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 399
    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    int-to-float v2, v2

    .line 407
    mul-float/2addr v2, p0

    .line 408
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    int-to-float v2, v2

    .line 419
    mul-float/2addr v2, p0

    .line 420
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 425
    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    int-to-float v2, v2

    .line 431
    mul-float/2addr v2, p0

    .line 432
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 437
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    int-to-float v2, v2

    .line 443
    mul-float/2addr v2, p0

    .line 444
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 445
    .line 446
    .line 447
    move-result p0

    .line 448
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 449
    .line 450
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 451
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-ne p0, v2, :cond_c

    .line 457
    .line 458
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 459
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-ne p0, v2, :cond_c

    .line 465
    .line 466
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 467
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-ne p0, v2, :cond_c

    .line 473
    .line 474
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 475
    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eq p0, v2, :cond_d

    .line 481
    .line 482
    :cond_c
    move v1, v3

    .line 483
    :cond_d
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 484
    .line 485
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 486
    .line 487
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 488
    .line 489
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 490
    .line 491
    invoke-virtual {p1, p0, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 492
    .line 493
    .line 494
    :goto_2
    if-nez v1, :cond_e

    .line 495
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 497
    .line 498
    .line 499
    :cond_e
    return-void
.end method
