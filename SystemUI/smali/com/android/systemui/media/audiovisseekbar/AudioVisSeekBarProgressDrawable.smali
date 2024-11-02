.class public final Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public active:Z

.field public final config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

.field public final motionActivityAnimator$delegate:Lkotlin/Lazy;

.field public final remainTrackBounds:Landroid/graphics/RectF;

.field public final remainTrackRenderer$delegate:Lkotlin/Lazy;

.field public final trackBounds:Landroid/graphics/RectF;

.field public final trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

.field public final view:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    .line 5
    .line 6
    new-instance v8, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v6, 0x1f

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v0, v8

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object v8, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 21
    .line 22
    sget-object v0, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;->WAVE_MULTI_AREA_AUTO:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererType;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->active:Z

    .line 26
    .line 27
    new-instance v2, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackBounds:Landroid/graphics/RectF;

    .line 33
    .line 34
    new-instance v2, Landroid/graphics/RectF;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackBounds:Landroid/graphics/RectF;

    .line 40
    .line 41
    new-instance v2, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;-><init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    .line 51
    .line 52
    sget-object v2, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/android/systemui/media/audiovisseekbar/renderer/TrackRendererFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    aget v0, v2, v0

    .line 64
    .line 65
    if-ne v0, v1, :cond_0

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 68
    .line 69
    invoke-direct {v0, p1, v8}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 73
    .line 74
    new-instance p1, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2;-><init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->motionActivityAnimator$delegate:Lkotlin/Lazy;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 87
    .line 88
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    .line 12
    .line 13
    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    iget v3, v2, Landroid/graphics/RectF;->right:F

    .line 20
    .line 21
    sget-object v9, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;

    .line 22
    .line 23
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    sub-float v6, v3, v6

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget-object v8, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->trackPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    move-object/from16 v3, p1

    .line 39
    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 44
    .line 45
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sub-float v11, v3, v4

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    sub-float v12, v3, v4

    .line 60
    .line 61
    iget v13, v2, Landroid/graphics/RectF;->right:F

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-float v14, v3, v2

    .line 72
    .line 73
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    invoke-static {}, Lcom/android/systemui/media/audiovisseekbar/config/RendererConfig;->getRemainTrackBorderBound()F

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    iget-object v1, v1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->trackBorderPaint:Landroid/graphics/Paint;

    .line 82
    .line 83
    move-object/from16 v10, p1

    .line 84
    .line 85
    move-object/from16 v17, v1

    .line 86
    .line 87
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 91
    .line 92
    iget v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->thumbX:F

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    cmpg-float v1, v1, v2

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x1

    .line 99
    if-nez v1, :cond_0

    .line 100
    .line 101
    move v1, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    move v1, v3

    .line 104
    :goto_0
    if-eqz v1, :cond_1

    .line 105
    .line 106
    goto/16 :goto_11

    .line 107
    .line 108
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    int-to-float v5, v5

    .line 115
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const/high16 v6, 0x41000000    # 8.0f

    .line 119
    .line 120
    invoke-static {v6}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/high16 v8, 0x40000000    # 2.0f

    .line 125
    .line 126
    mul-float/2addr v7, v8

    .line 127
    sub-float/2addr v5, v7

    .line 128
    invoke-static {v6}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    const/4 v7, 0x2

    .line 133
    int-to-float v7, v7

    .line 134
    div-float/2addr v6, v7

    .line 135
    move v8, v4

    .line 136
    move v4, v3

    .line 137
    :goto_1
    iget v9, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->numWaves:I

    .line 138
    .line 139
    if-ge v3, v9, :cond_14

    .line 140
    .line 141
    iget-object v10, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->pathPaint:Landroid/graphics/Paint;

    .line 142
    .line 143
    iget-object v11, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->evaluator:Landroid/animation/ArgbEvaluator;

    .line 144
    .line 145
    iget v12, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    .line 146
    .line 147
    iget-object v13, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 148
    .line 149
    iget v14, v13, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 150
    .line 151
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    if-nez v3, :cond_2

    .line 156
    .line 157
    iget v13, v13, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    iget v13, v13, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 161
    .line 162
    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    invoke-virtual {v11, v12, v14, v13}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    check-cast v11, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    .line 178
    .line 179
    if-ne v3, v8, :cond_3

    .line 180
    .line 181
    const/16 v11, 0xba

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_3
    const/16 v11, 0xc8

    .line 185
    .line 186
    :goto_3
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    .line 188
    .line 189
    sub-int v11, v9, v3

    .line 190
    .line 191
    int-to-float v11, v11

    .line 192
    int-to-float v9, v9

    .line 193
    div-float/2addr v11, v9

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    int-to-float v9, v9

    .line 199
    const v12, 0x3f8ccccd    # 1.1f

    .line 200
    .line 201
    .line 202
    div-float/2addr v9, v12

    .line 203
    sub-float/2addr v9, v6

    .line 204
    div-float/2addr v9, v7

    .line 205
    const/high16 v12, 0x40400000    # 3.0f

    .line 206
    .line 207
    invoke-static {v12}, Lcom/android/systemui/media/audiovisseekbar/utils/DimensionUtilsKt;->dpToPx(F)F

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    sub-float/2addr v9, v12

    .line 212
    mul-float/2addr v9, v11

    .line 213
    iget-object v11, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->path:Landroid/graphics/Path;

    .line 214
    .line 215
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 216
    .line 217
    .line 218
    iget v12, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->thumbX:F

    .line 219
    .line 220
    invoke-static {v12}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    iget v13, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->stepX:I

    .line 225
    .line 226
    if-lez v13, :cond_13

    .line 227
    .line 228
    invoke-static {v4, v12, v13}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    iget-object v14, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftCornerBounds:Landroid/graphics/RectF;

    .line 233
    .line 234
    if-ltz v4, :cond_10

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    :goto_4
    int-to-float v15, v8

    .line 238
    move/from16 v16, v2

    .line 239
    .line 240
    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phase:F

    .line 241
    .line 242
    move/from16 v17, v7

    .line 243
    .line 244
    add-int/lit8 v7, v3, 0x1

    .line 245
    .line 246
    int-to-float v7, v7

    .line 247
    mul-float/2addr v2, v7

    .line 248
    div-float v7, v15, v5

    .line 249
    .line 250
    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    move/from16 v20, v3

    .line 256
    .line 257
    move/from16 v21, v4

    .line 258
    .line 259
    float-to-double v3, v7

    .line 260
    mul-double v3, v3, v18

    .line 261
    .line 262
    iget v7, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->cycleCount:I

    .line 263
    .line 264
    move/from16 v18, v8

    .line 265
    .line 266
    int-to-double v7, v7

    .line 267
    mul-double/2addr v3, v7

    .line 268
    float-to-double v7, v2

    .line 269
    add-double/2addr v3, v7

    .line 270
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    iget-object v4, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->bounds:Landroid/graphics/RectF;

    .line 275
    .line 276
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    div-float v4, v15, v4

    .line 281
    .line 282
    iget-object v7, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->scalePath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 283
    .line 284
    iget-object v8, v7, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 285
    .line 286
    move/from16 v19, v5

    .line 287
    .line 288
    iget v5, v7, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathLegth:F

    .line 289
    .line 290
    mul-float/2addr v4, v5

    .line 291
    iget-object v5, v7, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    .line 292
    .line 293
    move-object/from16 v22, v1

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    invoke-virtual {v8, v4, v5, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 297
    .line 298
    .line 299
    iget-object v1, v7, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    .line 300
    .line 301
    const/4 v4, 0x1

    .line 302
    aget v1, v1, v4

    .line 303
    .line 304
    mul-float v4, v9, v1

    .line 305
    .line 306
    float-to-double v4, v4

    .line 307
    mul-double/2addr v4, v2

    .line 308
    float-to-double v2, v9

    .line 309
    sub-double/2addr v4, v2

    .line 310
    float-to-double v1, v1

    .line 311
    mul-double/2addr v4, v1

    .line 312
    iget v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    .line 313
    .line 314
    float-to-double v1, v1

    .line 315
    mul-double/2addr v4, v1

    .line 316
    iget-object v1, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->widthScale:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 317
    .line 318
    iget v1, v1, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    .line 319
    .line 320
    float-to-double v1, v1

    .line 321
    mul-double/2addr v4, v1

    .line 322
    const v1, 0x3f8ccccd    # 1.1f

    .line 323
    .line 324
    .line 325
    float-to-double v1, v1

    .line 326
    mul-double/2addr v4, v1

    .line 327
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    const/high16 v2, 0x3f000000    # 0.5f

    .line 332
    .line 333
    mul-float/2addr v1, v2

    .line 334
    cmpg-float v2, v15, v1

    .line 335
    .line 336
    if-gtz v2, :cond_4

    .line 337
    .line 338
    const/4 v1, 0x0

    .line 339
    float-to-double v1, v1

    .line 340
    mul-double/2addr v4, v1

    .line 341
    move/from16 v23, v9

    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_4
    cmpl-float v2, v15, v1

    .line 345
    .line 346
    const v7, 0x3f2147ae    # 0.63f

    .line 347
    .line 348
    .line 349
    const/high16 v8, 0x3e800000    # 0.25f

    .line 350
    .line 351
    if-lez v2, :cond_5

    .line 352
    .line 353
    int-to-float v2, v12

    .line 354
    const/high16 v3, 0x3f000000    # 0.5f

    .line 355
    .line 356
    invoke-static {v2, v1, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    cmpg-float v3, v15, v2

    .line 361
    .line 362
    if-gtz v3, :cond_5

    .line 363
    .line 364
    sub-float v1, v15, v1

    .line 365
    .line 366
    div-float/2addr v1, v2

    .line 367
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .line 368
    .line 369
    const v3, 0x3e6147ae    # 0.22f

    .line 370
    .line 371
    .line 372
    move/from16 v23, v9

    .line 373
    .line 374
    const/high16 v9, 0x3f800000    # 1.0f

    .line 375
    .line 376
    invoke-direct {v2, v3, v8, v7, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    goto :goto_5

    .line 384
    :cond_5
    move/from16 v23, v9

    .line 385
    .line 386
    const/high16 v9, 0x3f800000    # 1.0f

    .line 387
    .line 388
    sub-float v2, v15, v1

    .line 389
    .line 390
    int-to-float v3, v12

    .line 391
    const/high16 v7, 0x3f000000    # 0.5f

    .line 392
    .line 393
    invoke-static {v3, v1, v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    sub-float/2addr v2, v1

    .line 398
    div-float/2addr v2, v1

    .line 399
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 400
    .line 401
    const v3, 0x3f2147ae    # 0.63f

    .line 402
    .line 403
    .line 404
    invoke-direct {v1, v8, v8, v3, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 405
    .line 406
    .line 407
    sub-float v3, v9, v2

    .line 408
    .line 409
    invoke-virtual {v1, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    :goto_5
    float-to-double v1, v1

    .line 414
    mul-double/2addr v4, v1

    .line 415
    :goto_6
    invoke-virtual {v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    sub-float/2addr v1, v6

    .line 420
    float-to-double v1, v1

    .line 421
    add-double/2addr v1, v4

    .line 422
    double-to-float v1, v1

    .line 423
    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    .line 424
    .line 425
    const/high16 v3, 0x3f800000    # 1.0f

    .line 426
    .line 427
    cmpg-float v2, v2, v3

    .line 428
    .line 429
    if-gez v2, :cond_d

    .line 430
    .line 431
    iget v2, v14, Landroid/graphics/RectF;->left:F

    .line 432
    .line 433
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    cmpg-float v3, v15, v3

    .line 438
    .line 439
    if-gtz v3, :cond_6

    .line 440
    .line 441
    cmpg-float v2, v2, v15

    .line 442
    .line 443
    if-gtz v2, :cond_6

    .line 444
    .line 445
    const/4 v2, 0x1

    .line 446
    goto :goto_7

    .line 447
    :cond_6
    const/4 v2, 0x0

    .line 448
    :goto_7
    if-eqz v2, :cond_d

    .line 449
    .line 450
    iget-object v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->leftTopCornerPath:Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;

    .line 451
    .line 452
    iget-object v3, v2, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    .line 453
    .line 454
    array-length v4, v3

    .line 455
    add-int/lit8 v4, v4, -0x1

    .line 456
    .line 457
    const/4 v5, 0x0

    .line 458
    aget-object v5, v3, v5

    .line 459
    .line 460
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 461
    .line 462
    cmpg-float v7, v15, v7

    .line 463
    .line 464
    if-gtz v7, :cond_7

    .line 465
    .line 466
    iget v2, v5, Landroid/graphics/PointF;->y:F

    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_7
    aget-object v3, v3, v4

    .line 470
    .line 471
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 472
    .line 473
    cmpl-float v5, v15, v5

    .line 474
    .line 475
    if-ltz v5, :cond_8

    .line 476
    .line 477
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 478
    .line 479
    :goto_8
    const/4 v3, 0x1

    .line 480
    goto :goto_c

    .line 481
    :cond_8
    const/4 v3, 0x0

    .line 482
    :goto_9
    sub-int v5, v4, v3

    .line 483
    .line 484
    const/4 v7, 0x1

    .line 485
    if-le v5, v7, :cond_a

    .line 486
    .line 487
    add-int v5, v3, v4

    .line 488
    .line 489
    div-int/lit8 v5, v5, 0x2

    .line 490
    .line 491
    iget-object v7, v2, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    .line 492
    .line 493
    aget-object v7, v7, v5

    .line 494
    .line 495
    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 496
    .line 497
    cmpg-float v7, v15, v7

    .line 498
    .line 499
    if-gez v7, :cond_9

    .line 500
    .line 501
    move v4, v5

    .line 502
    goto :goto_9

    .line 503
    :cond_9
    move v3, v5

    .line 504
    goto :goto_9

    .line 505
    :cond_a
    iget-object v2, v2, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    .line 506
    .line 507
    aget-object v4, v2, v4

    .line 508
    .line 509
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 510
    .line 511
    aget-object v2, v2, v3

    .line 512
    .line 513
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 514
    .line 515
    sub-float/2addr v5, v3

    .line 516
    const/4 v8, 0x0

    .line 517
    cmpg-float v8, v5, v8

    .line 518
    .line 519
    if-nez v8, :cond_b

    .line 520
    .line 521
    move v8, v7

    .line 522
    goto :goto_a

    .line 523
    :cond_b
    const/4 v8, 0x0

    .line 524
    :goto_a
    if-eqz v8, :cond_c

    .line 525
    .line 526
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_c
    sub-float v3, v15, v3

    .line 530
    .line 531
    div-float/2addr v3, v5

    .line 532
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 533
    .line 534
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 535
    .line 536
    invoke-static {v4, v2, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    :goto_b
    move v3, v7

    .line 541
    :goto_c
    iget v4, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    .line 542
    .line 543
    invoke-static {v1, v2, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    goto :goto_d

    .line 548
    :cond_d
    const/4 v3, 0x1

    .line 549
    :goto_d
    const/4 v2, 0x0

    .line 550
    int-to-float v2, v2

    .line 551
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    const/high16 v5, 0x3f000000    # 0.5f

    .line 556
    .line 557
    mul-float/2addr v4, v5

    .line 558
    add-float/2addr v4, v2

    .line 559
    cmpg-float v4, v15, v4

    .line 560
    .line 561
    if-gtz v4, :cond_e

    .line 562
    .line 563
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    mul-float/2addr v4, v5

    .line 568
    add-float/2addr v4, v2

    .line 569
    invoke-virtual {v11, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 570
    .line 571
    .line 572
    move v2, v1

    .line 573
    goto :goto_e

    .line 574
    :cond_e
    invoke-virtual {v11, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 575
    .line 576
    .line 577
    move/from16 v2, v16

    .line 578
    .line 579
    :goto_e
    move/from16 v8, v18

    .line 580
    .line 581
    move/from16 v1, v21

    .line 582
    .line 583
    if-eq v8, v1, :cond_f

    .line 584
    .line 585
    add-int/2addr v8, v13

    .line 586
    move v4, v1

    .line 587
    move/from16 v7, v17

    .line 588
    .line 589
    move/from16 v5, v19

    .line 590
    .line 591
    move/from16 v3, v20

    .line 592
    .line 593
    move-object/from16 v1, v22

    .line 594
    .line 595
    move/from16 v9, v23

    .line 596
    .line 597
    goto/16 :goto_4

    .line 598
    .line 599
    :cond_f
    move v8, v3

    .line 600
    goto :goto_f

    .line 601
    :cond_10
    move-object/from16 v22, v1

    .line 602
    .line 603
    move/from16 v20, v3

    .line 604
    .line 605
    move/from16 v19, v5

    .line 606
    .line 607
    move/from16 v17, v7

    .line 608
    .line 609
    const/4 v2, 0x0

    .line 610
    :goto_f
    const/4 v4, 0x0

    .line 611
    int-to-float v1, v4

    .line 612
    add-float/2addr v1, v6

    .line 613
    int-to-float v3, v12

    .line 614
    invoke-virtual {v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 615
    .line 616
    .line 617
    move-result v5

    .line 618
    add-float/2addr v5, v6

    .line 619
    invoke-virtual {v11, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->getCenterY()F

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    add-float/2addr v3, v6

    .line 627
    invoke-virtual {v11, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 628
    .line 629
    .line 630
    const/high16 v1, 0x42b40000    # 90.0f

    .line 631
    .line 632
    const/high16 v3, 0x43340000    # 180.0f

    .line 633
    .line 634
    invoke-virtual {v11, v14, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 635
    .line 636
    .line 637
    iget v1, v14, Landroid/graphics/RectF;->left:F

    .line 638
    .line 639
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    const/high16 v5, 0x3f000000    # 0.5f

    .line 644
    .line 645
    mul-float/2addr v3, v5

    .line 646
    add-float/2addr v3, v1

    .line 647
    invoke-virtual {v11, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 651
    .line 652
    .line 653
    move-object/from16 v1, p1

    .line 654
    .line 655
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 656
    .line 657
    .line 658
    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phase:F

    .line 659
    .line 660
    iget v3, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phaseShift:F

    .line 661
    .line 662
    add-float/2addr v2, v3

    .line 663
    iput v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->phase:F

    .line 664
    .line 665
    iget v2, v0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    .line 666
    .line 667
    const/4 v3, 0x0

    .line 668
    cmpg-float v2, v2, v3

    .line 669
    .line 670
    if-nez v2, :cond_11

    .line 671
    .line 672
    move v2, v8

    .line 673
    goto :goto_10

    .line 674
    :cond_11
    move v2, v4

    .line 675
    :goto_10
    if-nez v2, :cond_12

    .line 676
    .line 677
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->invalidate()V

    .line 678
    .line 679
    .line 680
    :cond_12
    add-int/lit8 v2, v20, 0x1

    .line 681
    .line 682
    move/from16 v7, v17

    .line 683
    .line 684
    move/from16 v5, v19

    .line 685
    .line 686
    move-object/from16 v1, v22

    .line 687
    .line 688
    move/from16 v24, v3

    .line 689
    .line 690
    move v3, v2

    .line 691
    move/from16 v2, v24

    .line 692
    .line 693
    goto/16 :goto_1

    .line 694
    .line 695
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 696
    .line 697
    const-string v1, "Step must be positive, was: "

    .line 698
    .line 699
    const-string v2, "."

    .line 700
    .line 701
    invoke-static {v1, v13, v2}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :cond_14
    :goto_11
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    const/16 p0, 0xff

    .line 2
    .line 3
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final getThumbX()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const v1, 0x461c4000    # 10000.0f

    .line 7
    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    int-to-float p0, p0

    .line 19
    mul-float/2addr v0, p0

    .line 20
    return v0
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackBounds:Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackBounds:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-float p1, p1

    .line 32
    iget-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackBounds:Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->onLayout(Landroid/graphics/RectF;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackBounds:Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->onLayout(Landroid/graphics/RectF;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->onThumbLocationChanged(F)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->remainTrackRenderer$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;->onThumbLocationChanged(F)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->getThumbX()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;->onThumbLocationChanged(F)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    return-void
.end method
