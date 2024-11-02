.class public final Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;
.super Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public isLoaded:Z

.field public isUsedAI:Z

.field public isUsedAppIcon:Z

.field public isUsedEffectColor:Z

.field public listener:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

.field public mAppIcon:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isLoaded:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAppIcon:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAI:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedEffectColor:Z

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 16
    .line 17
    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/nexus/particle/emitter/Emitter;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 31
    .line 32
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isLoaded:Z

    .line 7
    .line 8
    if-nez v0, :cond_c

    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->listener:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    .line 13
    .line 14
    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mIsUsedAppIconForEdgeLightingPlus:Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v6, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v7, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEdgeEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 32
    .line 33
    iget-object v7, v7, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    move-object v0, v4

    .line 45
    :goto_0
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    new-instance v8, Landroid/graphics/Canvas;

    .line 62
    .line 63
    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    invoke-virtual {v0, v5, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    move-object v7, v4

    .line 82
    :goto_1
    iput-object v7, v6, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    :cond_1
    iget-object v0, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;

    .line 92
    .line 93
    invoke-direct {v6, v2}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;-><init>(Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    iget-object v7, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 97
    .line 98
    if-nez v7, :cond_2

    .line 99
    .line 100
    move v2, v3

    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_2
    const-string v8, "isUsedAppIcon"

    .line 104
    .line 105
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    iput-boolean v8, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAppIcon:Z

    .line 110
    .line 111
    const-string v8, "isUsedAI"

    .line 112
    .line 113
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    iput-boolean v8, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAI:Z

    .line 118
    .line 119
    const-string v8, "isUsedEffectColor"

    .line 120
    .line 121
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput-boolean v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedEffectColor:Z

    .line 126
    .line 127
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 128
    .line 129
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->setShapeType()V

    .line 132
    .line 133
    .line 134
    iget-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    .line 135
    .line 136
    iget v9, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->cellCount:I

    .line 137
    .line 138
    iput v9, v8, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 139
    .line 140
    iput v9, v8, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 141
    .line 142
    invoke-virtual {v8}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    .line 143
    .line 144
    .line 145
    iget v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    .line 146
    .line 147
    if-eq v8, v9, :cond_3

    .line 148
    .line 149
    new-array v8, v9, [F

    .line 150
    .line 151
    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    .line 152
    .line 153
    new-array v8, v9, [F

    .line 154
    .line 155
    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    .line 156
    .line 157
    new-array v8, v9, [F

    .line 158
    .line 159
    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    .line 160
    .line 161
    new-array v8, v9, [F

    .line 162
    .line 163
    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    .line 164
    .line 165
    new-array v8, v9, [F

    .line 166
    .line 167
    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    .line 168
    .line 169
    new-array v8, v9, [F

    .line 170
    .line 171
    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    .line 172
    .line 173
    iput v9, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    .line 174
    .line 175
    :cond_3
    iget v8, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->intervalTime:I

    .line 176
    .line 177
    mul-int/2addr v8, v8

    .line 178
    int-to-long v8, v8

    .line 179
    iget-object v10, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 180
    .line 181
    iput-wide v8, v10, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 182
    .line 183
    iput-wide v8, v10, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 184
    .line 185
    invoke-virtual {v10}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    .line 186
    .line 187
    .line 188
    iput-object v4, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 189
    .line 190
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 193
    .line 194
    iget-object v4, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 195
    .line 196
    if-eqz v4, :cond_4

    .line 197
    .line 198
    move-object v7, v4

    .line 199
    :cond_4
    new-instance v4, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;

    .line 200
    .line 201
    invoke-direct {v4, v7}, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .line 203
    .line 204
    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;

    .line 205
    .line 206
    invoke-direct {v7, v4}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;-><init>(Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;)V

    .line 207
    .line 208
    .line 209
    new-instance v4, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;

    .line 210
    .line 211
    iget-object v8, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-direct {v4, v8, v7}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)V

    .line 214
    .line 215
    .line 216
    iput-object v4, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    .line 217
    .line 218
    iget-boolean v4, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAppIcon:Z

    .line 219
    .line 220
    if-nez v4, :cond_6

    .line 221
    .line 222
    iget-boolean v4, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAI:Z

    .line 223
    .line 224
    if-nez v4, :cond_6

    .line 225
    .line 226
    iget-boolean v4, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedEffectColor:Z

    .line 227
    .line 228
    if-nez v4, :cond_5

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_5
    iget v4, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->color:I

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_6
    :goto_2
    move v4, v5

    .line 235
    :goto_3
    const/16 v7, 0xa

    .line 236
    .line 237
    iput v7, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    .line 238
    .line 239
    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 240
    .line 241
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    int-to-float v8, v8

    .line 246
    iget-object v9, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    .line 247
    .line 248
    invoke-virtual {v9, v7, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 249
    .line 250
    .line 251
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 252
    .line 253
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    int-to-float v10, v10

    .line 258
    invoke-virtual {v9, v8, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 259
    .line 260
    .line 261
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 262
    .line 263
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    int-to-float v11, v11

    .line 268
    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 269
    .line 270
    .line 271
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 272
    .line 273
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    int-to-float v12, v12

    .line 278
    invoke-virtual {v9, v11, v12}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v7}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v11}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v7}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v11}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 303
    .line 304
    .line 305
    const/4 v7, 0x3

    .line 306
    new-array v7, v7, [F

    .line 307
    .line 308
    invoke-static {v4, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 309
    .line 310
    .line 311
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 312
    .line 313
    aget v5, v7, v5

    .line 314
    .line 315
    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 316
    .line 317
    .line 318
    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 319
    .line 320
    aget v8, v7, v3

    .line 321
    .line 322
    invoke-virtual {v9, v5, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 323
    .line 324
    .line 325
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 326
    .line 327
    const/4 v10, 0x2

    .line 328
    aget v7, v7, v10

    .line 329
    .line 330
    invoke-virtual {v9, v8, v7}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v9, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    .line 349
    .line 350
    .line 351
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 352
    .line 353
    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->width:F

    .line 354
    .line 355
    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 356
    .line 357
    .line 358
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 359
    .line 360
    iget-object v7, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mAppIcon:Landroid/graphics/Bitmap;

    .line 361
    .line 362
    if-eqz v7, :cond_7

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_7
    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->height:F

    .line 366
    .line 367
    :goto_4
    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    .line 368
    .line 369
    .line 370
    iget v4, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->lifeTime:I

    .line 371
    .line 372
    int-to-long v4, v4

    .line 373
    iget-object v7, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    .line 374
    .line 375
    iput-wide v4, v7, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    .line 376
    .line 377
    iput-wide v4, v7, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    .line 378
    .line 379
    invoke-virtual {v7}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    .line 380
    .line 381
    .line 382
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 383
    .line 384
    new-instance v5, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 385
    .line 386
    const/4 v7, 0x0

    .line 387
    invoke-direct {v5, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    .line 388
    .line 389
    .line 390
    new-instance v8, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 391
    .line 392
    const v9, 0x3ca3d70a    # 0.02f

    .line 393
    .line 394
    .line 395
    const v10, 0x3dcccccd    # 0.1f

    .line 396
    .line 397
    .line 398
    invoke-direct {v8, v9, v10}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    .line 399
    .line 400
    .line 401
    new-instance v9, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 402
    .line 403
    const v10, 0x3f19999a    # 0.6f

    .line 404
    .line 405
    .line 406
    const v11, 0x3f333333    # 0.7f

    .line 407
    .line 408
    .line 409
    invoke-direct {v9, v10, v11}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    .line 410
    .line 411
    .line 412
    new-instance v12, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 413
    .line 414
    const/high16 v13, 0x3f800000    # 1.0f

    .line 415
    .line 416
    invoke-direct {v12, v13}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    .line 417
    .line 418
    .line 419
    filled-new-array {v5, v8, v9, v12}, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    new-instance v8, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 424
    .line 425
    invoke-direct {v8, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    .line 426
    .line 427
    .line 428
    new-instance v9, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 429
    .line 430
    const v12, 0x3f666666    # 0.9f

    .line 431
    .line 432
    .line 433
    iget v14, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->alpha:F

    .line 434
    .line 435
    mul-float/2addr v12, v14

    .line 436
    mul-float/2addr v13, v14

    .line 437
    invoke-direct {v9, v12, v13}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    .line 438
    .line 439
    .line 440
    new-instance v12, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 441
    .line 442
    mul-float/2addr v10, v14

    .line 443
    mul-float/2addr v14, v11

    .line 444
    invoke-direct {v12, v10, v14}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    .line 445
    .line 446
    .line 447
    new-instance v10, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 448
    .line 449
    invoke-direct {v10, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    .line 450
    .line 451
    .line 452
    filled-new-array {v8, v9, v12, v10}, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    invoke-virtual {v2, v4, v5, v7}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setKeyFrameListRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    .line 457
    .line 458
    .line 459
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 460
    .line 461
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 462
    .line 463
    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 464
    .line 465
    iget-object v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->valueRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

    .line 466
    .line 467
    iget v7, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->minRotation:F

    .line 468
    .line 469
    iget v8, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->maxRotation:F

    .line 470
    .line 471
    invoke-virtual {v2, v4, v7, v8}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 472
    .line 473
    .line 474
    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 475
    .line 476
    iget-object v8, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 477
    .line 478
    iget v9, v8, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    .line 479
    .line 480
    iget-object v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 481
    .line 482
    iget v11, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    .line 483
    .line 484
    invoke-virtual {v2, v7, v9, v11}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 485
    .line 486
    .line 487
    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 488
    .line 489
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    int-to-float v11, v11

    .line 494
    iget v12, v8, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    .line 495
    .line 496
    mul-float/2addr v12, v11

    .line 497
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    int-to-float v11, v11

    .line 502
    iget v13, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    .line 503
    .line 504
    mul-float/2addr v13, v11

    .line 505
    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 506
    .line 507
    .line 508
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 509
    .line 510
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 511
    .line 512
    .line 513
    move-result v12

    .line 514
    int-to-float v12, v12

    .line 515
    iget v8, v8, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    .line 516
    .line 517
    mul-float/2addr v8, v12

    .line 518
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    int-to-float v12, v12

    .line 523
    iget v10, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    .line 524
    .line 525
    mul-float/2addr v10, v12

    .line 526
    invoke-virtual {v2, v11, v8, v10}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 527
    .line 528
    .line 529
    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 530
    .line 531
    iget-object v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 532
    .line 533
    iget v12, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    .line 534
    .line 535
    iget-object v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 536
    .line 537
    iget v13, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    .line 538
    .line 539
    invoke-virtual {v2, v8, v12, v13}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 540
    .line 541
    .line 542
    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 543
    .line 544
    iget v13, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    .line 545
    .line 546
    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    .line 547
    .line 548
    invoke-virtual {v2, v12, v13, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 549
    .line 550
    .line 551
    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 552
    .line 553
    iget v10, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    .line 554
    .line 555
    iget v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    .line 556
    .line 557
    invoke-virtual {v2, v13, v10, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 558
    .line 559
    .line 560
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 561
    .line 562
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 563
    .line 564
    iget-object v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->speedRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

    .line 565
    .line 566
    iget v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minRotation:F

    .line 567
    .line 568
    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxRotation:F

    .line 569
    .line 570
    invoke-virtual {v2, v4, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 571
    .line 572
    .line 573
    iget-object v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 574
    .line 575
    iget v14, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    .line 576
    .line 577
    iget-object v15, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 578
    .line 579
    iget v3, v15, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    .line 580
    .line 581
    invoke-virtual {v2, v7, v14, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 582
    .line 583
    .line 584
    iget v3, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    .line 585
    .line 586
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 587
    .line 588
    .line 589
    move-result v14

    .line 590
    mul-float/2addr v14, v3

    .line 591
    iget v3, v15, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    .line 592
    .line 593
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 594
    .line 595
    .line 596
    move-result v16

    .line 597
    mul-float v3, v3, v16

    .line 598
    .line 599
    invoke-virtual {v2, v9, v14, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 600
    .line 601
    .line 602
    iget v3, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    .line 603
    .line 604
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 605
    .line 606
    .line 607
    move-result v10

    .line 608
    mul-float/2addr v10, v3

    .line 609
    iget v3, v15, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    .line 610
    .line 611
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 612
    .line 613
    .line 614
    move-result v14

    .line 615
    mul-float/2addr v14, v3

    .line 616
    invoke-virtual {v2, v11, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 617
    .line 618
    .line 619
    iget-object v3, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 620
    .line 621
    iget v10, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    .line 622
    .line 623
    iget-object v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 624
    .line 625
    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    .line 626
    .line 627
    invoke-virtual {v2, v8, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 628
    .line 629
    .line 630
    iget v10, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    .line 631
    .line 632
    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    .line 633
    .line 634
    invoke-virtual {v2, v12, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 635
    .line 636
    .line 637
    iget v3, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    .line 638
    .line 639
    iget v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    .line 640
    .line 641
    invoke-virtual {v2, v13, v3, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 642
    .line 643
    .line 644
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 645
    .line 646
    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    .line 647
    .line 648
    iget-object v3, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->accelerationRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

    .line 649
    .line 650
    iget v5, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->minRotation:F

    .line 651
    .line 652
    iget v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->maxRotation:F

    .line 653
    .line 654
    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 655
    .line 656
    .line 657
    iget-object v4, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 658
    .line 659
    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    .line 660
    .line 661
    iget-object v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    .line 662
    .line 663
    iget v10, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    .line 664
    .line 665
    invoke-virtual {v2, v7, v5, v10}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 666
    .line 667
    .line 668
    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    .line 669
    .line 670
    iget v7, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    .line 671
    .line 672
    invoke-virtual {v2, v9, v5, v7}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 673
    .line 674
    .line 675
    iget v4, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    .line 676
    .line 677
    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    .line 678
    .line 679
    invoke-virtual {v2, v11, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 680
    .line 681
    .line 682
    iget-object v4, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 683
    .line 684
    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    .line 685
    .line 686
    iget-object v3, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    .line 687
    .line 688
    iget v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    .line 689
    .line 690
    invoke-virtual {v2, v8, v5, v6}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 691
    .line 692
    .line 693
    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    .line 694
    .line 695
    iget v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    .line 696
    .line 697
    invoke-virtual {v2, v12, v5, v6}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 698
    .line 699
    .line 700
    iget v4, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    .line 701
    .line 702
    iget v3, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    .line 703
    .line 704
    invoke-virtual {v2, v13, v4, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    .line 705
    .line 706
    .line 707
    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 708
    .line 709
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    .line 710
    .line 711
    if-eqz v0, :cond_b

    .line 712
    .line 713
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 714
    .line 715
    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    if-eqz v2, :cond_a

    .line 721
    .line 722
    iget-boolean v3, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    .line 723
    .line 724
    if-nez v3, :cond_9

    .line 725
    .line 726
    const/4 v3, 0x1

    .line 727
    iput-boolean v3, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    .line 728
    .line 729
    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 730
    .line 731
    iput-object v3, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 732
    .line 733
    iget-object v4, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 734
    .line 735
    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;

    .line 736
    .line 737
    invoke-direct {v5, v3}, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/nexus/particle/emitter/World;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 741
    .line 742
    .line 743
    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 744
    .line 745
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 758
    .line 759
    if-ltz v2, :cond_8

    .line 760
    .line 761
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    check-cast v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 766
    .line 767
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 768
    .line 769
    .line 770
    move-result v5

    .line 771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    goto :goto_5

    .line 775
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    iput-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    .line 780
    .line 781
    const/4 v2, 0x1

    .line 782
    :goto_6
    iput-boolean v2, v1, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isLoaded:Z

    .line 783
    .line 784
    goto :goto_7

    .line 785
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 786
    .line 787
    const-string v1, "don\'t reuse emitter"

    .line 788
    .line 789
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    throw v0

    .line 793
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 794
    .line 795
    const-string/jumbo v1, "null emitter"

    .line 796
    .line 797
    .line 798
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    throw v0

    .line 802
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 803
    .line 804
    const-string v1, "layer not initiated"

    .line 805
    .line 806
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    throw v0

    .line 810
    :cond_c
    :goto_7
    return-void
.end method
