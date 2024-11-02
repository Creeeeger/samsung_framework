.class public final Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/biometrics/udfps/OverlapDetector;


# instance fields
.field public final params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;->params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isGoodOverlap(Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p2}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    move-object/from16 v2, p3

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    iget-object v5, v5, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;->params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    .line 30
    .line 31
    iget v6, v5, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    .line 32
    .line 33
    const-string v7, "."

    .line 34
    .line 35
    const-string v8, "Step must be positive, was: "

    .line 36
    .line 37
    if-lez v6, :cond_e

    .line 38
    .line 39
    invoke-static {v2, v4, v6}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-gt v2, v4, :cond_b

    .line 44
    .line 45
    move v9, v3

    .line 46
    move v10, v9

    .line 47
    :goto_0
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iget v12, v1, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget v13, v5, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    .line 52
    .line 53
    if-lez v13, :cond_a

    .line 54
    .line 55
    invoke-static {v11, v12, v13}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-gt v11, v12, :cond_8

    .line 60
    .line 61
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 70
    .line 71
    .line 72
    move-result v16

    .line 73
    div-int/lit8 v1, v16, 0x2

    .line 74
    .line 75
    sub-int/2addr v14, v11

    .line 76
    sub-int/2addr v15, v2

    .line 77
    mul-int/2addr v14, v14

    .line 78
    mul-int/2addr v15, v15

    .line 79
    add-int/2addr v15, v14

    .line 80
    int-to-float v14, v15

    .line 81
    move-object/from16 p0, v7

    .line 82
    .line 83
    int-to-float v7, v1

    .line 84
    move-object/from16 p3, v8

    .line 85
    .line 86
    iget v8, v5, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->targetSize:F

    .line 87
    .line 88
    mul-float/2addr v7, v8

    .line 89
    mul-float/2addr v7, v7

    .line 90
    cmpg-float v7, v14, v7

    .line 91
    .line 92
    if-gtz v7, :cond_2

    .line 93
    .line 94
    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->TARGET:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    mul-int/2addr v1, v1

    .line 98
    if-gt v15, v1, :cond_3

    .line 99
    .line 100
    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->SENSOR:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->OUTSIDE:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 104
    .line 105
    :goto_2
    sget-object v7, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->OUTSIDE:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 106
    .line 107
    if-eq v1, v7, :cond_7

    .line 108
    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    .line 111
    new-instance v7, Landroid/graphics/Point;

    .line 112
    .line 113
    invoke-direct {v7, v11, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 114
    .line 115
    .line 116
    iget v8, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    .line 117
    .line 118
    float-to-double v14, v8

    .line 119
    move/from16 v16, v9

    .line 120
    .line 121
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 122
    .line 123
    .line 124
    move-result-wide v8

    .line 125
    double-to-float v8, v8

    .line 126
    iget v9, v7, Landroid/graphics/Point;->x:I

    .line 127
    .line 128
    int-to-float v9, v9

    .line 129
    move-object/from16 v17, v5

    .line 130
    .line 131
    iget v5, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    .line 132
    .line 133
    sub-float/2addr v9, v5

    .line 134
    mul-float/2addr v9, v8

    .line 135
    move/from16 v18, v11

    .line 136
    .line 137
    move v8, v12

    .line 138
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 139
    .line 140
    .line 141
    move-result-wide v11

    .line 142
    double-to-float v11, v11

    .line 143
    iget v12, v7, Landroid/graphics/Point;->y:I

    .line 144
    .line 145
    int-to-float v12, v12

    .line 146
    move/from16 v19, v6

    .line 147
    .line 148
    iget v6, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    .line 149
    .line 150
    sub-float/2addr v12, v6

    .line 151
    mul-float/2addr v12, v11

    .line 152
    move v11, v2

    .line 153
    move/from16 v20, v3

    .line 154
    .line 155
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    double-to-float v2, v2

    .line 160
    iget v3, v7, Landroid/graphics/Point;->x:I

    .line 161
    .line 162
    int-to-float v3, v3

    .line 163
    sub-float/2addr v3, v5

    .line 164
    mul-float/2addr v3, v2

    .line 165
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 166
    .line 167
    .line 168
    move-result-wide v14

    .line 169
    double-to-float v2, v14

    .line 170
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 171
    .line 172
    int-to-float v5, v5

    .line 173
    sub-float/2addr v5, v6

    .line 174
    mul-float/2addr v5, v2

    .line 175
    add-float/2addr v9, v12

    .line 176
    mul-float/2addr v9, v9

    .line 177
    const/4 v2, 0x2

    .line 178
    int-to-float v2, v2

    .line 179
    iget v6, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    .line 180
    .line 181
    div-float/2addr v6, v2

    .line 182
    mul-float/2addr v6, v6

    .line 183
    div-float/2addr v9, v6

    .line 184
    sub-float/2addr v3, v5

    .line 185
    mul-float/2addr v3, v3

    .line 186
    iget v5, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    .line 187
    .line 188
    div-float/2addr v5, v2

    .line 189
    mul-float/2addr v5, v5

    .line 190
    div-float/2addr v3, v5

    .line 191
    add-float/2addr v3, v9

    .line 192
    const/high16 v2, 0x3f800000    # 1.0f

    .line 193
    .line 194
    cmpg-float v2, v3, v2

    .line 195
    .line 196
    if-gtz v2, :cond_4

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    goto :goto_3

    .line 200
    :cond_4
    const/4 v2, 0x0

    .line 201
    :goto_3
    if-eqz v2, :cond_6

    .line 202
    .line 203
    add-int/lit8 v10, v10, 0x1

    .line 204
    .line 205
    sget-object v2, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->TARGET:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 206
    .line 207
    if-ne v1, v2, :cond_5

    .line 208
    .line 209
    const/4 v1, 0x1

    .line 210
    goto :goto_4

    .line 211
    :cond_5
    const/4 v1, 0x0

    .line 212
    :goto_4
    or-int v3, v20, v1

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_6
    move/from16 v3, v20

    .line 216
    .line 217
    :goto_5
    move/from16 v9, v16

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_7
    move/from16 v20, v3

    .line 221
    .line 222
    move-object/from16 v17, v5

    .line 223
    .line 224
    move/from16 v19, v6

    .line 225
    .line 226
    move/from16 v18, v11

    .line 227
    .line 228
    move v8, v12

    .line 229
    move v11, v2

    .line 230
    :goto_6
    move/from16 v1, v18

    .line 231
    .line 232
    if-eq v1, v8, :cond_9

    .line 233
    .line 234
    add-int/2addr v1, v13

    .line 235
    move-object/from16 v7, p0

    .line 236
    .line 237
    move v12, v8

    .line 238
    move v2, v11

    .line 239
    move-object/from16 v5, v17

    .line 240
    .line 241
    move/from16 v6, v19

    .line 242
    .line 243
    move-object/from16 v8, p3

    .line 244
    .line 245
    move v11, v1

    .line 246
    move-object/from16 v1, p2

    .line 247
    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :cond_8
    move v11, v2

    .line 251
    move-object/from16 v17, v5

    .line 252
    .line 253
    move/from16 v19, v6

    .line 254
    .line 255
    move-object/from16 p0, v7

    .line 256
    .line 257
    move-object/from16 p3, v8

    .line 258
    .line 259
    :cond_9
    if-eq v11, v4, :cond_c

    .line 260
    .line 261
    add-int v2, v11, v19

    .line 262
    .line 263
    move-object/from16 v7, p0

    .line 264
    .line 265
    move-object/from16 v1, p2

    .line 266
    .line 267
    move-object/from16 v8, p3

    .line 268
    .line 269
    move-object/from16 v5, v17

    .line 270
    .line 271
    move/from16 v6, v19

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_a
    move-object/from16 p0, v7

    .line 276
    .line 277
    move-object/from16 p3, v8

    .line 278
    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    move-object/from16 v1, p0

    .line 282
    .line 283
    move-object/from16 v2, p3

    .line 284
    .line 285
    invoke-static {v2, v13, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_b
    move-object/from16 v17, v5

    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    const/4 v9, 0x0

    .line 297
    const/4 v10, 0x0

    .line 298
    :cond_c
    int-to-float v0, v10

    .line 299
    int-to-float v1, v9

    .line 300
    div-float/2addr v0, v1

    .line 301
    move-object/from16 v1, v17

    .line 302
    .line 303
    iget v1, v1, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->minOverlap:F

    .line 304
    .line 305
    cmpl-float v0, v0, v1

    .line 306
    .line 307
    if-ltz v0, :cond_d

    .line 308
    .line 309
    if-eqz v3, :cond_d

    .line 310
    .line 311
    const/4 v0, 0x1

    .line 312
    goto :goto_7

    .line 313
    :cond_d
    const/4 v0, 0x0

    .line 314
    :goto_7
    return v0

    .line 315
    :cond_e
    move/from16 v19, v6

    .line 316
    .line 317
    move-object v1, v7

    .line 318
    move-object v2, v8

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 320
    .line 321
    move/from16 v3, v19

    .line 322
    .line 323
    invoke-static {v2, v3, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0
.end method
