.class public final Lcom/android/keyguard/punchhole/VIDirector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final PUNCH_HOLE_VI_INFO:Ljava/lang/String;


# instance fields
.field public mCameraLocPercent:Landroid/graphics/PointF;

.field public final mContext:Landroid/content/Context;

.field public mFaceVISizePercent:Landroid/graphics/PointF;

.field public mIsBasedOnType:Z

.field public mIsBouncer:Z

.field public mIsFolderOpened:Z

.field public mVIFileName:Ljava/lang/String;

.field public mVIType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_PUNCHHOLE_VI"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/keyguard/punchhole/VIDirector;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getScreenHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final getScreenRotation()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final getScreenWidth()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final getVIViewLocation(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    const-string/jumbo v3, "vcut"

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :sswitch_1
    const-string/jumbo v1, "ucut"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_1

    .line 36
    :sswitch_2
    const-string v1, "infinity-ucut"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    move v0, v4

    .line 45
    goto :goto_1

    .line 46
    :sswitch_3
    const-string v1, "circle"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    move v0, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 57
    :goto_1
    if-eqz v0, :cond_7

    .line 58
    .line 59
    if-eq v0, v5, :cond_7

    .line 60
    .line 61
    if-eq v0, v4, :cond_7

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .line 73
    .line 74
    const v3, 0x7f07124b

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const v4, 0x10504fe

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v6, 0x7f050010

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x0

    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    const v6, 0x7f07016d

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    move v0, v7

    .line 107
    :goto_2
    const-string/jumbo v6, "statusBarHeight = "

    .line 108
    .line 109
    .line 110
    const-string v8, " cameraTopMargin = "

    .line 111
    .line 112
    const-string v9, " cameraProtectionStroke = "

    .line 113
    .line 114
    invoke-static {v6, v3, v8, v4, v9}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const-string v6, "KeyguardPunchHoleVIView_VIDirector"

    .line 126
    .line 127
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_2

    .line 135
    .line 136
    iget v8, p1, Landroid/graphics/Rect;->right:I

    .line 137
    .line 138
    iget v9, p1, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    sub-int/2addr v8, v9

    .line 141
    div-int/2addr v8, v2

    .line 142
    goto :goto_3

    .line 143
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    iget v9, p1, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    sub-int/2addr v8, v9

    .line 148
    div-int/2addr v8, v2

    .line 149
    :goto_3
    cmpl-float v9, v0, v7

    .line 150
    .line 151
    if-nez v9, :cond_3

    .line 152
    .line 153
    move v10, v7

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    const/high16 v10, 0x40000000    # 2.0f

    .line 156
    .line 157
    div-float v10, v0, v10

    .line 158
    .line 159
    const/high16 v11, 0x3f800000    # 1.0f

    .line 160
    .line 161
    add-float/2addr v10, v11

    .line 162
    :goto_4
    float-to-int v10, v10

    .line 163
    float-to-int v11, v4

    .line 164
    sub-int/2addr v11, v10

    .line 165
    sub-int/2addr v11, v8

    .line 166
    if-nez v9, :cond_4

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_4
    sub-float/2addr v0, v4

    .line 170
    int-to-float v4, v11

    .line 171
    sub-float v7, v0, v4

    .line 172
    .line 173
    :goto_5
    float-to-int v0, v7

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v7, "rect = "

    .line 177
    .line 178
    .line 179
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v7, " viStroke = "

    .line 186
    .line 187
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v7, " gap = "

    .line 194
    .line 195
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v7, " cameraStroke = "

    .line 199
    .line 200
    const-string v9, " topCameraStroke = "

    .line 201
    .line 202
    invoke-static {v4, v11, v7, v10, v9}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v4, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    if-eq v3, v5, :cond_6

    .line 209
    .line 210
    if-eq v3, v2, :cond_5

    .line 211
    .line 212
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 213
    .line 214
    sub-int/2addr v2, v8

    .line 215
    sub-int/2addr v2, v10

    .line 216
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 217
    .line 218
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 219
    .line 220
    sub-int/2addr v2, v0

    .line 221
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 224
    .line 225
    add-int/2addr v0, v8

    .line 226
    add-int/2addr v0, v10

    .line 227
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 228
    .line 229
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 230
    .line 231
    add-int/2addr p1, v8

    .line 232
    sub-int/2addr p1, v11

    .line 233
    add-int/2addr p1, v10

    .line 234
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 238
    .line 239
    sub-int/2addr v2, v8

    .line 240
    sub-int/2addr v2, v10

    .line 241
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 242
    .line 243
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 244
    .line 245
    sub-int/2addr v2, v8

    .line 246
    sub-int/2addr v2, v10

    .line 247
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 248
    .line 249
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 250
    .line 251
    add-int/2addr v2, v0

    .line 252
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 253
    .line 254
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 255
    .line 256
    add-int/2addr p1, v8

    .line 257
    add-int/2addr p1, v10

    .line 258
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 262
    .line 263
    sub-int/2addr v2, v0

    .line 264
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 265
    .line 266
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 267
    .line 268
    sub-int/2addr v0, v8

    .line 269
    sub-int/2addr v0, v10

    .line 270
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 271
    .line 272
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 273
    .line 274
    add-int/2addr v0, v8

    .line 275
    sub-int/2addr v0, v11

    .line 276
    add-int/2addr v0, v10

    .line 277
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 278
    .line 279
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 280
    .line 281
    add-int/2addr p1, v8

    .line 282
    add-int/2addr p1, v10

    .line 283
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 284
    .line 285
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string/jumbo v0, "viViewLocation = "

    .line 288
    .line 289
    .line 290
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_7
    new-instance v1, Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    const/high16 v0, 0x3f000000    # 0.5f

    .line 316
    .line 317
    if-eqz p1, :cond_8

    .line 318
    .line 319
    new-instance p1, Landroid/graphics/PointF;

    .line 320
    .line 321
    const v2, 0x3c75c28f    # 0.015f

    .line 322
    .line 323
    .line 324
    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Landroid/graphics/PointF;

    .line 328
    .line 329
    const/high16 v2, 0x3e800000    # 0.25f

    .line 330
    .line 331
    const v3, 0x3d8ccccd    # 0.06875f

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 335
    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_8
    new-instance p1, Landroid/graphics/PointF;

    .line 339
    .line 340
    const v2, 0x3ce075f7    # 0.0274f

    .line 341
    .line 342
    .line 343
    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 344
    .line 345
    .line 346
    new-instance v0, Landroid/graphics/PointF;

    .line 347
    .line 348
    const v2, 0x3e50e560    # 0.204f

    .line 349
    .line 350
    .line 351
    const v3, 0x3d4ccccd    # 0.05f

    .line 352
    .line 353
    .line 354
    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 355
    .line 356
    .line 357
    :goto_7
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/keyguard/punchhole/VIDirector;->setViViewLocation(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 358
    .line 359
    .line 360
    :goto_8
    if-eqz p2, :cond_9

    .line 361
    .line 362
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    .line 365
    .line 366
    .line 367
    move-result p0

    .line 368
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 369
    .line 370
    sub-int/2addr p2, p0

    .line 371
    iput p2, v1, Landroid/graphics/Rect;->left:I

    .line 372
    .line 373
    sub-int/2addr p1, p0

    .line 374
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 375
    .line 376
    :cond_9
    return-object v1

    .line 377
    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_3
        -0x3e6d7dce -> :sswitch_2
        0x36b1ad -> :sswitch_1
        0x37260c -> :sswitch_0
    .end sparse-switch
.end method

.method public final initialize()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirector;->PUNCH_HOLE_VI_INFO:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    const-string v2, ","

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    array-length v4, v2

    .line 20
    move v5, v3

    .line 21
    :goto_0
    const-string/jumbo v6, "size"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v7, "pos"

    .line 25
    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    if-ge v5, v4, :cond_f

    .line 29
    .line 30
    aget-object v9, v2, v5

    .line 31
    .line 32
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const/4 v11, 0x5

    .line 37
    const/4 v12, 0x3

    .line 38
    const/4 v13, 0x2

    .line 39
    const-string v14, ":"

    .line 40
    .line 41
    if-eqz v7, :cond_6

    .line 42
    .line 43
    invoke-static {v9, v14}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget-boolean v15, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 48
    .line 49
    if-eqz v15, :cond_1

    .line 50
    .line 51
    move v3, v11

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v3, v12

    .line 54
    :goto_1
    array-length v10, v7

    .line 55
    if-eq v10, v3, :cond_2

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    if-eqz v15, :cond_5

    .line 59
    .line 60
    new-instance v3, Landroid/graphics/PointF;

    .line 61
    .line 62
    iget-boolean v10, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 63
    .line 64
    if-eqz v10, :cond_3

    .line 65
    .line 66
    move v10, v8

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v10, v12

    .line 69
    :goto_2
    aget-object v10, v7, v10

    .line 70
    .line 71
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    iget-boolean v15, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 80
    .line 81
    if-eqz v15, :cond_4

    .line 82
    .line 83
    move v15, v13

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    const/4 v15, 0x4

    .line 86
    :goto_3
    aget-object v7, v7, v15

    .line 87
    .line 88
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-direct {v3, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 97
    .line 98
    .line 99
    iput-object v3, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    new-instance v3, Landroid/graphics/PointF;

    .line 103
    .line 104
    aget-object v10, v7, v8

    .line 105
    .line 106
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    aget-object v7, v7, v13

    .line 115
    .line 116
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-direct {v3, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 125
    .line 126
    .line 127
    iput-object v3, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 128
    .line 129
    :cond_6
    :goto_4
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_c

    .line 134
    .line 135
    invoke-static {v9, v14}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 140
    .line 141
    if-eqz v6, :cond_7

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    move v11, v12

    .line 145
    :goto_5
    array-length v7, v3

    .line 146
    if-eq v7, v11, :cond_8

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_8
    if-eqz v6, :cond_b

    .line 150
    .line 151
    new-instance v6, Landroid/graphics/PointF;

    .line 152
    .line 153
    iget-boolean v7, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 154
    .line 155
    if-eqz v7, :cond_9

    .line 156
    .line 157
    move v12, v8

    .line 158
    :cond_9
    aget-object v7, v3, v12

    .line 159
    .line 160
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    iget-boolean v10, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsFolderOpened:Z

    .line 169
    .line 170
    if-eqz v10, :cond_a

    .line 171
    .line 172
    move v10, v13

    .line 173
    goto :goto_6

    .line 174
    :cond_a
    const/4 v10, 0x4

    .line 175
    :goto_6
    aget-object v3, v3, v10

    .line 176
    .line 177
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-direct {v6, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 186
    .line 187
    .line 188
    iput-object v6, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_b
    new-instance v6, Landroid/graphics/PointF;

    .line 192
    .line 193
    aget-object v7, v3, v8

    .line 194
    .line 195
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    aget-object v3, v3, v13

    .line 204
    .line 205
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-direct {v6, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 214
    .line 215
    .line 216
    iput-object v6, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 217
    .line 218
    :cond_c
    :goto_7
    const-string/jumbo v3, "type"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_e

    .line 226
    .line 227
    invoke-static {v9, v14}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    array-length v6, v3

    .line 232
    if-ge v6, v13, :cond_d

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v7, "punch_hole_ic_"

    .line 238
    .line 239
    .line 240
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    aget-object v7, v3, v8

    .line 244
    .line 245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    iput-object v6, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 253
    .line 254
    aget-object v3, v3, v8

    .line 255
    .line 256
    iput-object v3, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIType:Ljava/lang/String;

    .line 257
    .line 258
    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 259
    .line 260
    const/4 v3, 0x0

    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-nez v2, :cond_10

    .line 268
    .line 269
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_10

    .line 274
    .line 275
    move v1, v8

    .line 276
    goto :goto_9

    .line 277
    :cond_10
    const/4 v1, 0x0

    .line 278
    :goto_9
    iput-boolean v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBasedOnType:Z

    .line 279
    .line 280
    if-eqz v1, :cond_12

    .line 281
    .line 282
    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v0, :cond_11

    .line 285
    .line 286
    move v3, v8

    .line 287
    goto :goto_a

    .line 288
    :cond_11
    const/4 v3, 0x0

    .line 289
    :goto_a
    return v3

    .line 290
    :cond_12
    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 291
    .line 292
    if-eqz v1, :cond_13

    .line 293
    .line 294
    iget-object v1, v0, Lcom/android/keyguard/punchhole/VIDirector;->mFaceVISizePercent:Landroid/graphics/PointF;

    .line 295
    .line 296
    if-eqz v1, :cond_13

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v0, :cond_13

    .line 301
    .line 302
    move v3, v8

    .line 303
    goto :goto_b

    .line 304
    :cond_13
    const/4 v3, 0x0

    .line 305
    :goto_b
    return v3
.end method

.method public final setViViewLocation(Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/high16 v4, 0x3f000000    # 0.5f

    .line 17
    .line 18
    if-eq p0, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq p0, v2, :cond_0

    .line 22
    .line 23
    int-to-float p0, v0

    .line 24
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 25
    .line 26
    iget v2, p3, Landroid/graphics/PointF;->x:F

    .line 27
    .line 28
    mul-float v3, v2, v4

    .line 29
    .line 30
    sub-float/2addr v0, v3

    .line 31
    mul-float/2addr v0, p0

    .line 32
    float-to-int v0, v0

    .line 33
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 39
    .line 40
    mul-float/2addr v4, p3

    .line 41
    sub-float/2addr p2, v4

    .line 42
    mul-float/2addr p2, v1

    .line 43
    float-to-int p2, p2

    .line 44
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    int-to-float v0, v0

    .line 47
    mul-float/2addr p0, v2

    .line 48
    add-float/2addr p0, v0

    .line 49
    float-to-int p0, p0

    .line 50
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    int-to-float p0, p2

    .line 53
    mul-float/2addr v1, p3

    .line 54
    add-float/2addr v1, p0

    .line 55
    float-to-int p0, v1

    .line 56
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    int-to-float p0, v0

    .line 60
    iget v0, p2, Landroid/graphics/PointF;->y:F

    .line 61
    .line 62
    sub-float/2addr v3, v0

    .line 63
    mul-float/2addr v3, p0

    .line 64
    int-to-float v0, v1

    .line 65
    iget v1, p3, Landroid/graphics/PointF;->x:F

    .line 66
    .line 67
    mul-float/2addr v1, v0

    .line 68
    mul-float v2, v1, v4

    .line 69
    .line 70
    sub-float/2addr v3, v2

    .line 71
    float-to-int v2, v3

    .line 72
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 75
    .line 76
    mul-float/2addr p2, v0

    .line 77
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    mul-float/2addr p0, p3

    .line 80
    mul-float/2addr v4, p0

    .line 81
    sub-float/2addr p2, v4

    .line 82
    float-to-int p2, p2

    .line 83
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    int-to-float p3, v2

    .line 86
    add-float/2addr v1, p3

    .line 87
    float-to-int p3, v1

    .line 88
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    int-to-float p2, p2

    .line 91
    add-float/2addr p0, p2

    .line 92
    float-to-int p0, p0

    .line 93
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    int-to-float p0, v0

    .line 97
    iget v0, p2, Landroid/graphics/PointF;->y:F

    .line 98
    .line 99
    mul-float/2addr v0, p0

    .line 100
    int-to-float v1, v1

    .line 101
    iget v2, p3, Landroid/graphics/PointF;->x:F

    .line 102
    .line 103
    mul-float/2addr v2, v1

    .line 104
    mul-float v5, v2, v4

    .line 105
    .line 106
    sub-float/2addr v0, v5

    .line 107
    float-to-int v0, v0

    .line 108
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 111
    .line 112
    sub-float/2addr v3, p2

    .line 113
    mul-float/2addr v3, v1

    .line 114
    iget p2, p3, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    mul-float/2addr p0, p2

    .line 117
    mul-float/2addr v4, p0

    .line 118
    sub-float/2addr v3, v4

    .line 119
    float-to-int p2, v3

    .line 120
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    int-to-float p3, v0

    .line 123
    add-float/2addr v2, p3

    .line 124
    float-to-int p3, v2

    .line 125
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 126
    .line 127
    int-to-float p2, p2

    .line 128
    add-float/2addr p0, p2

    .line 129
    float-to-int p0, p0

    .line 130
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 131
    .line 132
    :goto_0
    return-void
.end method
