.class public final Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final boundsPath:Landroid/graphics/Path;

.field public final cornerPath:Landroid/graphics/Path;

.field public final cornerPaths:[Lcom/google/android/material/shape/ShapePath;

.field public final cornerTransforms:[Landroid/graphics/Matrix;

.field public final edgeIntersectionCheckEnabled:Z

.field public final edgePath:Landroid/graphics/Path;

.field public final edgeTransforms:[Landroid/graphics/Matrix;

.field public final overlappedEdgePath:Landroid/graphics/Path;

.field public final pointF:Landroid/graphics/PointF;

.field public final scratch:[F

.field public final scratch2:[F

.field public final shapePath:Lcom/google/android/material/shape/ShapePath;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 12
    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 37
    .line 38
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    .line 48
    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 75
    .line 76
    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    .line 77
    .line 78
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 79
    .line 80
    .line 81
    aput-object v3, v2, v1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v3, v2, v1

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v3, v2, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public final calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/MaterialShapeDrawable$1;Landroid/graphics/Path;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->overlappedEdgePath:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->boundsPath:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 14
    .line 15
    .line 16
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 17
    .line 18
    move-object/from16 v7, p3

    .line 19
    .line 20
    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    .line 24
    .line 25
    move-object v4, v3

    .line 26
    move-object/from16 v5, p1

    .line 27
    .line 28
    move/from16 v6, p2

    .line 29
    .line 30
    move-object/from16 v8, p4

    .line 31
    .line 32
    move-object/from16 v9, p5

    .line 33
    .line 34
    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x1

    .line 42
    iget-object v10, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeTransforms:[Landroid/graphics/Matrix;

    .line 43
    .line 44
    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch:[F

    .line 45
    .line 46
    iget-object v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 47
    .line 48
    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 49
    .line 50
    iget v14, v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    .line 51
    .line 52
    iget-object v15, v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    .line 53
    .line 54
    iget-object v4, v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 55
    .line 56
    if-ge v5, v7, :cond_9

    .line 57
    .line 58
    if-eq v5, v9, :cond_2

    .line 59
    .line 60
    if-eq v5, v6, :cond_1

    .line 61
    .line 62
    if-eq v5, v8, :cond_0

    .line 63
    .line 64
    iget-object v7, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object v7, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v7, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v7, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 74
    .line 75
    :goto_1
    if-eq v5, v9, :cond_5

    .line 76
    .line 77
    if-eq v5, v6, :cond_4

    .line 78
    .line 79
    if-eq v5, v8, :cond_3

    .line 80
    .line 81
    iget-object v4, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iget-object v4, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget-object v4, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    iget-object v4, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 91
    .line 92
    :goto_2
    aget-object v8, v13, v5

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-interface {v7, v15}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v4, v14, v7, v8}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v4, v5, 0x1

    .line 105
    .line 106
    mul-int/lit8 v7, v4, 0x5a

    .line 107
    .line 108
    int-to-float v7, v7

    .line 109
    aget-object v8, v12, v5

    .line 110
    .line 111
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 112
    .line 113
    .line 114
    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pointF:Landroid/graphics/PointF;

    .line 115
    .line 116
    if-eq v5, v9, :cond_8

    .line 117
    .line 118
    if-eq v5, v6, :cond_7

    .line 119
    .line 120
    const/4 v6, 0x3

    .line 121
    if-eq v5, v6, :cond_6

    .line 122
    .line 123
    iget v6, v15, Landroid/graphics/RectF;->right:F

    .line 124
    .line 125
    iget v14, v15, Landroid/graphics/RectF;->top:F

    .line 126
    .line 127
    invoke-virtual {v8, v6, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    iget v6, v15, Landroid/graphics/RectF;->left:F

    .line 132
    .line 133
    iget v14, v15, Landroid/graphics/RectF;->top:F

    .line 134
    .line 135
    invoke-virtual {v8, v6, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    iget v6, v15, Landroid/graphics/RectF;->left:F

    .line 140
    .line 141
    iget v14, v15, Landroid/graphics/RectF;->bottom:F

    .line 142
    .line 143
    invoke-virtual {v8, v6, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_8
    iget v6, v15, Landroid/graphics/RectF;->right:F

    .line 148
    .line 149
    iget v14, v15, Landroid/graphics/RectF;->bottom:F

    .line 150
    .line 151
    invoke-virtual {v8, v6, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    .line 153
    .line 154
    :goto_3
    aget-object v6, v12, v5

    .line 155
    .line 156
    iget v14, v8, Landroid/graphics/PointF;->x:F

    .line 157
    .line 158
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 159
    .line 160
    invoke-virtual {v6, v14, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 161
    .line 162
    .line 163
    aget-object v6, v12, v5

    .line 164
    .line 165
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 166
    .line 167
    .line 168
    aget-object v6, v13, v5

    .line 169
    .line 170
    iget v8, v6, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 171
    .line 172
    const/16 v16, 0x0

    .line 173
    .line 174
    aput v8, v11, v16

    .line 175
    .line 176
    iget v6, v6, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 177
    .line 178
    aput v6, v11, v9

    .line 179
    .line 180
    aget-object v6, v12, v5

    .line 181
    .line 182
    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 183
    .line 184
    .line 185
    aget-object v6, v10, v5

    .line 186
    .line 187
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 188
    .line 189
    .line 190
    aget-object v6, v10, v5

    .line 191
    .line 192
    aget v8, v11, v16

    .line 193
    .line 194
    aget v9, v11, v9

    .line 195
    .line 196
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 197
    .line 198
    .line 199
    aget-object v5, v10, v5

    .line 200
    .line 201
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 202
    .line 203
    .line 204
    move v5, v4

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_9
    const/16 v16, 0x0

    .line 208
    .line 209
    move/from16 v5, v16

    .line 210
    .line 211
    :goto_4
    if-ge v5, v7, :cond_13

    .line 212
    .line 213
    aget-object v8, v13, v5

    .line 214
    .line 215
    iget v7, v8, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 216
    .line 217
    aput v7, v11, v16

    .line 218
    .line 219
    iget v7, v8, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 220
    .line 221
    aput v7, v11, v9

    .line 222
    .line 223
    aget-object v7, v12, v5

    .line 224
    .line 225
    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 226
    .line 227
    .line 228
    iget-object v7, v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    .line 229
    .line 230
    if-nez v5, :cond_a

    .line 231
    .line 232
    aget v8, v11, v16

    .line 233
    .line 234
    aget v6, v11, v9

    .line 235
    .line 236
    invoke-virtual {v7, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_a
    aget v6, v11, v16

    .line 241
    .line 242
    aget v8, v11, v9

    .line 243
    .line 244
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    .line 246
    .line 247
    :goto_5
    aget-object v6, v13, v5

    .line 248
    .line 249
    aget-object v8, v12, v5

    .line 250
    .line 251
    invoke-virtual {v6, v8, v7}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 252
    .line 253
    .line 254
    iget-object v6, v3, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 255
    .line 256
    if-eqz v6, :cond_b

    .line 257
    .line 258
    aget-object v8, v13, v5

    .line 259
    .line 260
    aget-object v9, v12, v5

    .line 261
    .line 262
    move-object/from16 v17, v3

    .line 263
    .line 264
    move-object v3, v6

    .line 265
    check-cast v3, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    .line 266
    .line 267
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 268
    .line 269
    move-object/from16 v18, v6

    .line 270
    .line 271
    iget-object v6, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 272
    .line 273
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    move-object/from16 v19, v7

    .line 277
    .line 278
    const/4 v7, 0x0

    .line 279
    invoke-virtual {v6, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 280
    .line 281
    .line 282
    iget-object v3, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;->cornerShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 283
    .line 284
    iget v6, v8, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 285
    .line 286
    invoke-virtual {v8, v6}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 287
    .line 288
    .line 289
    new-instance v6, Landroid/graphics/Matrix;

    .line 290
    .line 291
    invoke-direct {v6, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 292
    .line 293
    .line 294
    new-instance v7, Ljava/util/ArrayList;

    .line 295
    .line 296
    iget-object v9, v8, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 297
    .line 298
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    .line 300
    .line 301
    new-instance v9, Lcom/google/android/material/shape/ShapePath$1;

    .line 302
    .line 303
    invoke-direct {v9, v8, v7, v6}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 304
    .line 305
    .line 306
    aput-object v9, v3, v5

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_b
    move-object/from16 v17, v3

    .line 310
    .line 311
    move-object/from16 v18, v6

    .line 312
    .line 313
    move-object/from16 v19, v7

    .line 314
    .line 315
    :goto_6
    add-int/lit8 v3, v5, 0x1

    .line 316
    .line 317
    rem-int/lit8 v6, v3, 0x4

    .line 318
    .line 319
    aget-object v7, v13, v5

    .line 320
    .line 321
    iget v8, v7, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    aput v8, v11, v9

    .line 325
    .line 326
    iget v7, v7, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 327
    .line 328
    const/4 v8, 0x1

    .line 329
    aput v7, v11, v8

    .line 330
    .line 331
    aget-object v7, v12, v5

    .line 332
    .line 333
    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 334
    .line 335
    .line 336
    aget-object v7, v13, v6

    .line 337
    .line 338
    iget v8, v7, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 339
    .line 340
    move/from16 v20, v3

    .line 341
    .line 342
    iget-object v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->scratch2:[F

    .line 343
    .line 344
    aput v8, v3, v9

    .line 345
    .line 346
    iget v7, v7, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 347
    .line 348
    const/4 v8, 0x1

    .line 349
    aput v7, v3, v8

    .line 350
    .line 351
    aget-object v7, v12, v6

    .line 352
    .line 353
    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 354
    .line 355
    .line 356
    aget v7, v11, v9

    .line 357
    .line 358
    aget v16, v3, v9

    .line 359
    .line 360
    sub-float v7, v7, v16

    .line 361
    .line 362
    move-object v9, v1

    .line 363
    move-object/from16 v21, v2

    .line 364
    .line 365
    float-to-double v1, v7

    .line 366
    aget v7, v11, v8

    .line 367
    .line 368
    aget v3, v3, v8

    .line 369
    .line 370
    sub-float/2addr v7, v3

    .line 371
    float-to-double v7, v7

    .line 372
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 373
    .line 374
    .line 375
    move-result-wide v1

    .line 376
    double-to-float v1, v1

    .line 377
    const v2, 0x3a83126f    # 0.001f

    .line 378
    .line 379
    .line 380
    sub-float/2addr v1, v2

    .line 381
    const/4 v2, 0x0

    .line 382
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    aget-object v3, v13, v5

    .line 387
    .line 388
    iget v7, v3, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 389
    .line 390
    const/4 v8, 0x0

    .line 391
    aput v7, v11, v8

    .line 392
    .line 393
    iget v3, v3, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 394
    .line 395
    const/4 v7, 0x1

    .line 396
    aput v3, v11, v7

    .line 397
    .line 398
    aget-object v3, v12, v5

    .line 399
    .line 400
    invoke-virtual {v3, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 401
    .line 402
    .line 403
    if-eq v5, v7, :cond_c

    .line 404
    .line 405
    const/4 v3, 0x3

    .line 406
    if-eq v5, v3, :cond_c

    .line 407
    .line 408
    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    aget v8, v11, v7

    .line 413
    .line 414
    sub-float/2addr v3, v8

    .line 415
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    goto :goto_7

    .line 420
    :cond_c
    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    const/4 v7, 0x0

    .line 425
    aget v8, v11, v7

    .line 426
    .line 427
    sub-float/2addr v3, v8

    .line 428
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    :goto_7
    const/high16 v7, 0x43870000    # 270.0f

    .line 433
    .line 434
    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->shapePath:Lcom/google/android/material/shape/ShapePath;

    .line 435
    .line 436
    invoke-virtual {v8, v2, v2, v7, v2}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    .line 437
    .line 438
    .line 439
    const/4 v2, 0x1

    .line 440
    if-eq v5, v2, :cond_f

    .line 441
    .line 442
    const/4 v2, 0x2

    .line 443
    if-eq v5, v2, :cond_e

    .line 444
    .line 445
    const/4 v7, 0x3

    .line 446
    if-eq v5, v7, :cond_d

    .line 447
    .line 448
    iget-object v2, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_d
    iget-object v2, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_e
    const/4 v7, 0x3

    .line 455
    iget-object v2, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_f
    const/4 v7, 0x3

    .line 459
    iget-object v2, v4, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 460
    .line 461
    :goto_8
    invoke-virtual {v2, v1, v3, v14, v8}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgePath:Landroid/graphics/Path;

    .line 465
    .line 466
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 467
    .line 468
    .line 469
    aget-object v3, v10, v5

    .line 470
    .line 471
    invoke-virtual {v8, v3, v1}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 472
    .line 473
    .line 474
    iget-boolean v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->edgeIntersectionCheckEnabled:Z

    .line 475
    .line 476
    if-eqz v3, :cond_11

    .line 477
    .line 478
    invoke-virtual {v2}, Lcom/google/android/material/shape/EdgeTreatment;->forceIntersection()Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-nez v2, :cond_10

    .line 483
    .line 484
    invoke-virtual {v0, v1, v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-nez v2, :cond_10

    .line 489
    .line 490
    invoke-virtual {v0, v1, v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->pathOverlapsCorner(Landroid/graphics/Path;I)Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_11

    .line 495
    .line 496
    :cond_10
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 497
    .line 498
    move-object/from16 v3, v21

    .line 499
    .line 500
    invoke-virtual {v1, v1, v3, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 501
    .line 502
    .line 503
    iget v1, v8, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 504
    .line 505
    const/4 v2, 0x0

    .line 506
    aput v1, v11, v2

    .line 507
    .line 508
    iget v1, v8, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 509
    .line 510
    const/4 v6, 0x1

    .line 511
    aput v1, v11, v6

    .line 512
    .line 513
    aget-object v1, v10, v5

    .line 514
    .line 515
    invoke-virtual {v1, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 516
    .line 517
    .line 518
    aget v1, v11, v2

    .line 519
    .line 520
    aget v2, v11, v6

    .line 521
    .line 522
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 523
    .line 524
    .line 525
    aget-object v1, v10, v5

    .line 526
    .line 527
    invoke-virtual {v8, v1, v9}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 528
    .line 529
    .line 530
    goto :goto_9

    .line 531
    :cond_11
    move-object/from16 v3, v21

    .line 532
    .line 533
    const/4 v6, 0x1

    .line 534
    aget-object v1, v10, v5

    .line 535
    .line 536
    move-object/from16 v2, v19

    .line 537
    .line 538
    invoke-virtual {v8, v1, v2}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 539
    .line 540
    .line 541
    :goto_9
    if-eqz v18, :cond_12

    .line 542
    .line 543
    aget-object v1, v10, v5

    .line 544
    .line 545
    move-object/from16 v2, v18

    .line 546
    .line 547
    check-cast v2, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    .line 548
    .line 549
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->this$0:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 550
    .line 551
    iget-object v6, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 552
    .line 553
    add-int/lit8 v7, v5, 0x4

    .line 554
    .line 555
    const/4 v0, 0x0

    .line 556
    invoke-virtual {v6, v7, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 557
    .line 558
    .line 559
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable;->edgeShadowOperation:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 560
    .line 561
    iget v6, v8, Lcom/google/android/material/shape/ShapePath;->endShadowAngle:F

    .line 562
    .line 563
    invoke-virtual {v8, v6}, Lcom/google/android/material/shape/ShapePath;->addConnectingShadowIfNecessary(F)V

    .line 564
    .line 565
    .line 566
    new-instance v6, Landroid/graphics/Matrix;

    .line 567
    .line 568
    invoke-direct {v6, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 569
    .line 570
    .line 571
    new-instance v1, Ljava/util/ArrayList;

    .line 572
    .line 573
    iget-object v7, v8, Lcom/google/android/material/shape/ShapePath;->shadowCompatOperations:Ljava/util/List;

    .line 574
    .line 575
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 576
    .line 577
    .line 578
    new-instance v7, Lcom/google/android/material/shape/ShapePath$1;

    .line 579
    .line 580
    invoke-direct {v7, v8, v1, v6}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Lcom/google/android/material/shape/ShapePath;Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 581
    .line 582
    .line 583
    aput-object v7, v2, v5

    .line 584
    .line 585
    goto :goto_a

    .line 586
    :cond_12
    const/4 v0, 0x0

    .line 587
    :goto_a
    move/from16 v16, v0

    .line 588
    .line 589
    move-object v2, v3

    .line 590
    move-object v1, v9

    .line 591
    move-object/from16 v3, v17

    .line 592
    .line 593
    move/from16 v5, v20

    .line 594
    .line 595
    const/4 v6, 0x2

    .line 596
    const/4 v7, 0x4

    .line 597
    const/4 v9, 0x1

    .line 598
    move-object/from16 v0, p0

    .line 599
    .line 600
    goto/16 :goto_4

    .line 601
    .line 602
    :cond_13
    move-object v9, v1

    .line 603
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-nez v0, :cond_14

    .line 614
    .line 615
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 616
    .line 617
    move-object/from16 v1, p5

    .line 618
    .line 619
    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 620
    .line 621
    .line 622
    :cond_14
    return-void
.end method

.method public final pathOverlapsCorner(Landroid/graphics/Path;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPath:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerPaths:[Lcom/google/android/material/shape/ShapePath;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->cornerTransforms:[Landroid/graphics/Matrix;

    .line 11
    .line 12
    aget-object p0, p0, p2

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    cmpl-float p0, p0, v0

    .line 58
    .line 59
    if-lez p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    :cond_1
    :goto_0
    return p2
.end method
