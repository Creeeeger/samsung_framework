.class public final Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public shapeModifiers:Ljava/util/List;

.field public final tempPath:Landroid/graphics/Path;

.field public final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 16
    .line 17
    iget-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    new-instance v5, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 27
    .line 28
    :cond_0
    iget-boolean v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-nez v5, :cond_2

    .line 32
    .line 33
    iget-boolean v5, v1, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v5, v6

    .line 41
    :goto_1
    iput-boolean v5, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 42
    .line 43
    iget-object v5, v3, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 44
    .line 45
    check-cast v5, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iget-object v8, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 52
    .line 53
    check-cast v8, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iget-object v9, v1, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 60
    .line 61
    if-eq v7, v8, :cond_3

    .line 62
    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v8, "Curves must have the same number of control points. Shape 1: "

    .line 66
    .line 67
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, "\tShape 2: "

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-object v8, v9

    .line 83
    check-cast v8, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v7}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    check-cast v9, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 114
    .line 115
    check-cast v8, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-ge v10, v7, :cond_4

    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    :goto_2
    if-ge v10, v7, :cond_5

    .line 128
    .line 129
    new-instance v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 130
    .line 131
    invoke-direct {v11}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-le v10, v7, :cond_5

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    sub-int/2addr v10, v6

    .line 151
    :goto_3
    if-lt v10, v7, :cond_5

    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    sub-int/2addr v11, v6

    .line 158
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v10, v10, -0x1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    iget-object v3, v3, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 167
    .line 168
    iget v7, v3, Landroid/graphics/PointF;->x:F

    .line 169
    .line 170
    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 171
    .line 172
    sget-object v11, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 173
    .line 174
    invoke-static {v10, v7, v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 179
    .line 180
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 181
    .line 182
    sub-float/2addr v1, v3

    .line 183
    mul-float/2addr v1, v2

    .line 184
    add-float/2addr v1, v3

    .line 185
    invoke-virtual {v4, v7, v1}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sub-int/2addr v1, v6

    .line 193
    :goto_4
    if-ltz v1, :cond_6

    .line 194
    .line 195
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 200
    .line 201
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 206
    .line 207
    iget-object v10, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 208
    .line 209
    iget-object v11, v7, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 210
    .line 211
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 216
    .line 217
    iget v13, v10, Landroid/graphics/PointF;->x:F

    .line 218
    .line 219
    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 220
    .line 221
    invoke-static {v14, v13, v2, v13}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 226
    .line 227
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 228
    .line 229
    invoke-static {v11, v10, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    iget-object v11, v12, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 234
    .line 235
    invoke-virtual {v11, v13, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 243
    .line 244
    iget-object v11, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 245
    .line 246
    iget v12, v11, Landroid/graphics/PointF;->x:F

    .line 247
    .line 248
    iget-object v13, v7, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 249
    .line 250
    iget v14, v13, Landroid/graphics/PointF;->x:F

    .line 251
    .line 252
    invoke-static {v14, v12, v2, v12}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 257
    .line 258
    iget v13, v13, Landroid/graphics/PointF;->y:F

    .line 259
    .line 260
    invoke-static {v13, v11, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 265
    .line 266
    invoke-virtual {v10, v12, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 274
    .line 275
    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 276
    .line 277
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 278
    .line 279
    iget-object v7, v7, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 280
    .line 281
    iget v12, v7, Landroid/graphics/PointF;->x:F

    .line 282
    .line 283
    invoke-static {v12, v11, v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 288
    .line 289
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 290
    .line 291
    invoke-static {v7, v3, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    iget-object v7, v10, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 296
    .line 297
    invoke-virtual {v7, v11, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v1, v1, -0x1

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 304
    .line 305
    if-eqz v1, :cond_18

    .line 306
    .line 307
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    sub-int/2addr v1, v6

    .line 312
    :goto_5
    if-ltz v1, :cond_17

    .line 313
    .line 314
    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    .line 315
    .line 316
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 326
    .line 327
    check-cast v3, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    const/4 v7, 0x2

    .line 334
    if-gt v5, v7, :cond_7

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_7
    iget-object v5, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 338
    .line 339
    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    check-cast v5, Ljava/lang/Float;

    .line 344
    .line 345
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    const/4 v7, 0x0

    .line 350
    cmpl-float v7, v5, v7

    .line 351
    .line 352
    if-nez v7, :cond_8

    .line 353
    .line 354
    :goto_6
    move/from16 v16, v1

    .line 355
    .line 356
    goto/16 :goto_14

    .line 357
    .line 358
    :cond_8
    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 359
    .line 360
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 361
    .line 362
    check-cast v7, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    sub-int/2addr v9, v6

    .line 369
    const/4 v10, 0x0

    .line 370
    :goto_7
    if-ltz v9, :cond_d

    .line 371
    .line 372
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 377
    .line 378
    add-int/lit8 v12, v9, -0x1

    .line 379
    .line 380
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    invoke-static {v12, v13}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v13

    .line 392
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 393
    .line 394
    if-nez v9, :cond_9

    .line 395
    .line 396
    if-nez v8, :cond_9

    .line 397
    .line 398
    iget-object v14, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_9
    iget-object v14, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 402
    .line 403
    :goto_8
    if-nez v9, :cond_a

    .line 404
    .line 405
    if-nez v8, :cond_a

    .line 406
    .line 407
    move-object v13, v14

    .line 408
    goto :goto_9

    .line 409
    :cond_a
    iget-object v13, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 410
    .line 411
    :goto_9
    iget-object v11, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 412
    .line 413
    iget-boolean v15, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 414
    .line 415
    if-nez v15, :cond_b

    .line 416
    .line 417
    if-nez v9, :cond_b

    .line 418
    .line 419
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 420
    .line 421
    .line 422
    move-result v15

    .line 423
    sub-int/2addr v15, v6

    .line 424
    if-ne v9, v15, :cond_b

    .line 425
    .line 426
    move v9, v6

    .line 427
    goto :goto_a

    .line 428
    :cond_b
    const/4 v9, 0x0

    .line 429
    :goto_a
    invoke-virtual {v13, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v13

    .line 433
    if-eqz v13, :cond_c

    .line 434
    .line 435
    invoke-virtual {v11, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v11

    .line 439
    if-eqz v11, :cond_c

    .line 440
    .line 441
    if-nez v9, :cond_c

    .line 442
    .line 443
    add-int/lit8 v10, v10, 0x2

    .line 444
    .line 445
    goto :goto_b

    .line 446
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 447
    .line 448
    :goto_b
    move v9, v12

    .line 449
    goto :goto_7

    .line 450
    :cond_d
    iget-object v6, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 451
    .line 452
    if-eqz v6, :cond_f

    .line 453
    .line 454
    iget-object v6, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 455
    .line 456
    check-cast v6, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-eq v6, v10, :cond_e

    .line 463
    .line 464
    goto :goto_c

    .line 465
    :cond_e
    const/4 v6, 0x0

    .line 466
    goto :goto_e

    .line 467
    :cond_f
    :goto_c
    new-instance v6, Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    .line 471
    .line 472
    const/4 v7, 0x0

    .line 473
    :goto_d
    if-ge v7, v10, :cond_10

    .line 474
    .line 475
    new-instance v9, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 476
    .line 477
    invoke-direct {v9}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    add-int/lit8 v7, v7, 0x1

    .line 484
    .line 485
    goto :goto_d

    .line 486
    :cond_10
    new-instance v7, Lcom/airbnb/lottie/model/content/ShapeData;

    .line 487
    .line 488
    new-instance v9, Landroid/graphics/PointF;

    .line 489
    .line 490
    const/4 v10, 0x0

    .line 491
    invoke-direct {v9, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 492
    .line 493
    .line 494
    const/4 v10, 0x0

    .line 495
    invoke-direct {v7, v9, v10, v6}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    .line 496
    .line 497
    .line 498
    iput-object v7, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 499
    .line 500
    move v6, v10

    .line 501
    :goto_e
    iget-object v2, v2, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    .line 502
    .line 503
    iput-boolean v8, v2, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 504
    .line 505
    iget-object v7, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 506
    .line 507
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 508
    .line 509
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 510
    .line 511
    invoke-virtual {v2, v8, v7}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 512
    .line 513
    .line 514
    iget-object v7, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 515
    .line 516
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 517
    .line 518
    move v9, v6

    .line 519
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 520
    .line 521
    .line 522
    move-result v10

    .line 523
    if-ge v6, v10, :cond_16

    .line 524
    .line 525
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 530
    .line 531
    add-int/lit8 v11, v6, -0x1

    .line 532
    .line 533
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 534
    .line 535
    .line 536
    move-result v12

    .line 537
    invoke-static {v11, v12}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 538
    .line 539
    .line 540
    move-result v11

    .line 541
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 546
    .line 547
    add-int/lit8 v12, v6, -0x2

    .line 548
    .line 549
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 550
    .line 551
    .line 552
    move-result v13

    .line 553
    invoke-static {v12, v13}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 554
    .line 555
    .line 556
    move-result v12

    .line 557
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v12

    .line 561
    check-cast v12, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 562
    .line 563
    if-nez v6, :cond_11

    .line 564
    .line 565
    if-nez v8, :cond_11

    .line 566
    .line 567
    iget-object v13, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 568
    .line 569
    goto :goto_10

    .line 570
    :cond_11
    iget-object v13, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 571
    .line 572
    :goto_10
    if-nez v6, :cond_12

    .line 573
    .line 574
    if-nez v8, :cond_12

    .line 575
    .line 576
    move-object v14, v13

    .line 577
    goto :goto_11

    .line 578
    :cond_12
    iget-object v14, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 579
    .line 580
    :goto_11
    iget-object v15, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 581
    .line 582
    iget-object v12, v12, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 583
    .line 584
    move/from16 p1, v8

    .line 585
    .line 586
    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 587
    .line 588
    if-nez v8, :cond_13

    .line 589
    .line 590
    if-nez v6, :cond_13

    .line 591
    .line 592
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 593
    .line 594
    .line 595
    move-result v8

    .line 596
    add-int/lit8 v8, v8, -0x1

    .line 597
    .line 598
    if-ne v6, v8, :cond_13

    .line 599
    .line 600
    const/4 v8, 0x1

    .line 601
    goto :goto_12

    .line 602
    :cond_13
    const/4 v8, 0x0

    .line 603
    :goto_12
    invoke-virtual {v14, v13}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v14

    .line 607
    if-eqz v14, :cond_15

    .line 608
    .line 609
    invoke-virtual {v15, v13}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v14

    .line 613
    if-eqz v14, :cond_15

    .line 614
    .line 615
    if-nez v8, :cond_15

    .line 616
    .line 617
    iget v8, v13, Landroid/graphics/PointF;->x:F

    .line 618
    .line 619
    iget v11, v12, Landroid/graphics/PointF;->x:F

    .line 620
    .line 621
    sub-float v11, v8, v11

    .line 622
    .line 623
    iget v14, v13, Landroid/graphics/PointF;->y:F

    .line 624
    .line 625
    iget v15, v12, Landroid/graphics/PointF;->y:F

    .line 626
    .line 627
    sub-float v15, v14, v15

    .line 628
    .line 629
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 630
    .line 631
    move-object/from16 p2, v3

    .line 632
    .line 633
    iget v3, v10, Landroid/graphics/PointF;->x:F

    .line 634
    .line 635
    sub-float/2addr v3, v8

    .line 636
    iget v8, v10, Landroid/graphics/PointF;->y:F

    .line 637
    .line 638
    sub-float/2addr v8, v14

    .line 639
    move v14, v1

    .line 640
    float-to-double v0, v11

    .line 641
    move/from16 v16, v14

    .line 642
    .line 643
    float-to-double v14, v15

    .line 644
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 645
    .line 646
    .line 647
    move-result-wide v0

    .line 648
    double-to-float v0, v0

    .line 649
    float-to-double v14, v3

    .line 650
    move-object v1, v4

    .line 651
    float-to-double v3, v8

    .line 652
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 653
    .line 654
    .line 655
    move-result-wide v3

    .line 656
    double-to-float v3, v3

    .line 657
    div-float v0, v5, v0

    .line 658
    .line 659
    const/high16 v4, 0x3f000000    # 0.5f

    .line 660
    .line 661
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    div-float v3, v5, v3

    .line 666
    .line 667
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    iget v4, v13, Landroid/graphics/PointF;->x:F

    .line 672
    .line 673
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 674
    .line 675
    invoke-static {v8, v4, v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 676
    .line 677
    .line 678
    move-result v8

    .line 679
    iget v11, v13, Landroid/graphics/PointF;->y:F

    .line 680
    .line 681
    iget v12, v12, Landroid/graphics/PointF;->y:F

    .line 682
    .line 683
    invoke-static {v12, v11, v0, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    iget v12, v10, Landroid/graphics/PointF;->x:F

    .line 688
    .line 689
    invoke-static {v12, v4, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 690
    .line 691
    .line 692
    move-result v12

    .line 693
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 694
    .line 695
    invoke-static {v10, v11, v3, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    sub-float v10, v8, v4

    .line 700
    .line 701
    const v13, 0x3f0d4952    # 0.5519f

    .line 702
    .line 703
    .line 704
    mul-float/2addr v10, v13

    .line 705
    sub-float v10, v8, v10

    .line 706
    .line 707
    sub-float v14, v0, v11

    .line 708
    .line 709
    mul-float/2addr v14, v13

    .line 710
    sub-float v14, v0, v14

    .line 711
    .line 712
    sub-float v4, v12, v4

    .line 713
    .line 714
    mul-float/2addr v4, v13

    .line 715
    sub-float v4, v12, v4

    .line 716
    .line 717
    sub-float v11, v3, v11

    .line 718
    .line 719
    mul-float/2addr v11, v13

    .line 720
    sub-float v11, v3, v11

    .line 721
    .line 722
    add-int/lit8 v13, v9, -0x1

    .line 723
    .line 724
    move-object v15, v7

    .line 725
    check-cast v15, Ljava/util/ArrayList;

    .line 726
    .line 727
    move-object/from16 v17, v1

    .line 728
    .line 729
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    invoke-static {v13, v1}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 742
    .line 743
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v13

    .line 747
    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 748
    .line 749
    move/from16 v18, v5

    .line 750
    .line 751
    iget-object v5, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 752
    .line 753
    invoke-virtual {v5, v8, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 754
    .line 755
    .line 756
    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 757
    .line 758
    invoke-virtual {v1, v8, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 759
    .line 760
    .line 761
    if-nez v6, :cond_14

    .line 762
    .line 763
    invoke-virtual {v2, v8, v0}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 764
    .line 765
    .line 766
    :cond_14
    iget-object v0, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 767
    .line 768
    invoke-virtual {v0, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 769
    .line 770
    .line 771
    add-int/lit8 v9, v9, 0x1

    .line 772
    .line 773
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 778
    .line 779
    iget-object v1, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 780
    .line 781
    invoke-virtual {v1, v4, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 782
    .line 783
    .line 784
    iget-object v1, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 785
    .line 786
    invoke-virtual {v1, v12, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 787
    .line 788
    .line 789
    iget-object v0, v0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 790
    .line 791
    invoke-virtual {v0, v12, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 792
    .line 793
    .line 794
    goto :goto_13

    .line 795
    :cond_15
    move/from16 v16, v1

    .line 796
    .line 797
    move-object/from16 p2, v3

    .line 798
    .line 799
    move-object/from16 v17, v4

    .line 800
    .line 801
    move/from16 v18, v5

    .line 802
    .line 803
    add-int/lit8 v0, v9, -0x1

    .line 804
    .line 805
    move-object v1, v7

    .line 806
    check-cast v1, Ljava/util/ArrayList;

    .line 807
    .line 808
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 809
    .line 810
    .line 811
    move-result v3

    .line 812
    invoke-static {v0, v3}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    check-cast v0, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 821
    .line 822
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 827
    .line 828
    iget-object v3, v11, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 829
    .line 830
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 831
    .line 832
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 833
    .line 834
    iget-object v5, v0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 835
    .line 836
    invoke-virtual {v5, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 837
    .line 838
    .line 839
    iget-object v3, v11, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 840
    .line 841
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 842
    .line 843
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 844
    .line 845
    iget-object v0, v0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 846
    .line 847
    invoke-virtual {v0, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 848
    .line 849
    .line 850
    iget-object v0, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 851
    .line 852
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 853
    .line 854
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 855
    .line 856
    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 857
    .line 858
    invoke-virtual {v1, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 859
    .line 860
    .line 861
    :goto_13
    add-int/lit8 v9, v9, 0x1

    .line 862
    .line 863
    add-int/lit8 v6, v6, 0x1

    .line 864
    .line 865
    move-object/from16 v0, p0

    .line 866
    .line 867
    move/from16 v8, p1

    .line 868
    .line 869
    move-object/from16 v3, p2

    .line 870
    .line 871
    move/from16 v1, v16

    .line 872
    .line 873
    move-object/from16 v4, v17

    .line 874
    .line 875
    move/from16 v5, v18

    .line 876
    .line 877
    goto/16 :goto_f

    .line 878
    .line 879
    :cond_16
    move/from16 v16, v1

    .line 880
    .line 881
    move-object v4, v2

    .line 882
    :goto_14
    add-int/lit8 v1, v16, -0x1

    .line 883
    .line 884
    const/4 v6, 0x1

    .line 885
    move-object/from16 v0, p0

    .line 886
    .line 887
    goto/16 :goto_5

    .line 888
    .line 889
    :cond_17
    move-object/from16 v17, v4

    .line 890
    .line 891
    :cond_18
    move-object/from16 v0, p0

    .line 892
    .line 893
    iget-object v0, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    .line 894
    .line 895
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 896
    .line 897
    .line 898
    iget-object v1, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 899
    .line 900
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 901
    .line 902
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 903
    .line 904
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 905
    .line 906
    .line 907
    sget-object v2, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    .line 908
    .line 909
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 910
    .line 911
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 912
    .line 913
    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 914
    .line 915
    .line 916
    const/4 v1, 0x0

    .line 917
    :goto_15
    iget-object v3, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 918
    .line 919
    check-cast v3, Ljava/util/ArrayList;

    .line 920
    .line 921
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 922
    .line 923
    .line 924
    move-result v5

    .line 925
    if-ge v1, v5, :cond_1a

    .line 926
    .line 927
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 932
    .line 933
    iget-object v5, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 934
    .line 935
    invoke-virtual {v5, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    move-result v6

    .line 939
    iget-object v7, v3, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 940
    .line 941
    iget-object v3, v3, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 942
    .line 943
    if-eqz v6, :cond_19

    .line 944
    .line 945
    invoke-virtual {v7, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v6

    .line 949
    if-eqz v6, :cond_19

    .line 950
    .line 951
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 952
    .line 953
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 954
    .line 955
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 956
    .line 957
    .line 958
    goto :goto_16

    .line 959
    :cond_19
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 960
    .line 961
    iget v8, v5, Landroid/graphics/PointF;->y:F

    .line 962
    .line 963
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 964
    .line 965
    iget v10, v7, Landroid/graphics/PointF;->y:F

    .line 966
    .line 967
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 968
    .line 969
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 970
    .line 971
    move-object v5, v0

    .line 972
    move v7, v8

    .line 973
    move v8, v9

    .line 974
    move v9, v10

    .line 975
    move v10, v11

    .line 976
    move v11, v12

    .line 977
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 978
    .line 979
    .line 980
    :goto_16
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 981
    .line 982
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 983
    .line 984
    invoke-virtual {v2, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 985
    .line 986
    .line 987
    add-int/lit8 v1, v1, 0x1

    .line 988
    .line 989
    goto :goto_15

    .line 990
    :cond_1a
    iget-boolean v1, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 991
    .line 992
    if-eqz v1, :cond_1b

    .line 993
    .line 994
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 995
    .line 996
    .line 997
    :cond_1b
    return-object v0
.end method
