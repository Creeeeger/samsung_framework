.class public final Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ourPercent:[D


# instance fields
.field public final linear:Z

.field public mArcDistance:D

.field public final mArcVelocity:D

.field public final mEllipseA:D

.field public final mEllipseB:D

.field public final mEllipseCenterX:D

.field public final mEllipseCenterY:D

.field public final mLut:[D

.field public final mOneOverDeltaTime:D

.field public final mTime1:D

.field public final mTime2:D

.field public mTmpCosAngle:D

.field public mTmpSinAngle:D

.field public final mVertical:Z

.field public final mX1:D

.field public final mX2:D

.field public final mY1:D

.field public final mY2:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(IDDDDDD)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v6, p6

    .line 10
    .line 11
    move-wide/from16 v8, p8

    .line 12
    .line 13
    move-wide/from16 v10, p10

    .line 14
    .line 15
    move-wide/from16 v12, p12

    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    iput-boolean v14, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 22
    .line 23
    const/4 v15, 0x1

    .line 24
    if-ne v1, v15, :cond_0

    .line 25
    .line 26
    move v14, v15

    .line 27
    :cond_0
    iput-boolean v14, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 28
    .line 29
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 30
    .line 31
    iput-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 32
    .line 33
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 34
    .line 35
    sub-double v19, v4, v2

    .line 36
    .line 37
    div-double v2, v17, v19

    .line 38
    .line 39
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    if-ne v4, v1, :cond_1

    .line 43
    .line 44
    iput-boolean v15, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 45
    .line 46
    :cond_1
    sub-double v4, v10, v6

    .line 47
    .line 48
    move-wide/from16 v17, v2

    .line 49
    .line 50
    sub-double v1, v12, v8

    .line 51
    .line 52
    iget-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 53
    .line 54
    if-nez v3, :cond_d

    .line 55
    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v19

    .line 60
    const-wide v21, 0x3f50624dd2f1a9fcL    # 0.001

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmpg-double v3, v19, v21

    .line 66
    .line 67
    if-ltz v3, :cond_d

    .line 68
    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v19

    .line 73
    cmpg-double v3, v19, v21

    .line 74
    .line 75
    if-gez v3, :cond_2

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_2
    const/16 v3, 0x65

    .line 80
    .line 81
    new-array v3, v3, [D

    .line 82
    .line 83
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 84
    .line 85
    if-eqz v14, :cond_3

    .line 86
    .line 87
    const/4 v15, -0x1

    .line 88
    :cond_3
    int-to-double v10, v15

    .line 89
    mul-double/2addr v10, v4

    .line 90
    iput-wide v10, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 91
    .line 92
    if-eqz v14, :cond_4

    .line 93
    .line 94
    const/4 v15, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const/4 v15, -0x1

    .line 97
    :goto_0
    int-to-double v10, v15

    .line 98
    mul-double/2addr v1, v10

    .line 99
    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 100
    .line 101
    if-eqz v14, :cond_5

    .line 102
    .line 103
    move-wide/from16 v6, p10

    .line 104
    .line 105
    :cond_5
    iput-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 106
    .line 107
    if-eqz v14, :cond_6

    .line 108
    .line 109
    move-wide v1, v8

    .line 110
    goto :goto_1

    .line 111
    :cond_6
    move-wide v1, v12

    .line 112
    :goto_1
    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 113
    .line 114
    sub-double v1, v8, v12

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    const-wide/16 v9, 0x0

    .line 118
    .line 119
    const-wide/16 v11, 0x0

    .line 120
    .line 121
    const-wide/16 v13, 0x0

    .line 122
    .line 123
    :goto_2
    sget-object v15, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    .line 124
    .line 125
    const/16 v6, 0x5b

    .line 126
    .line 127
    const/16 v7, 0x5a

    .line 128
    .line 129
    if-ge v8, v6, :cond_8

    .line 130
    .line 131
    const-wide v17, 0x4056800000000000L    # 90.0

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    move-wide/from16 v20, v4

    .line 137
    .line 138
    int-to-double v3, v8

    .line 139
    mul-double v3, v3, v17

    .line 140
    .line 141
    int-to-double v5, v7

    .line 142
    div-double/2addr v3, v5

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    mul-double v5, v5, v20

    .line 156
    .line 157
    mul-double/2addr v3, v1

    .line 158
    if-lez v8, :cond_7

    .line 159
    .line 160
    sub-double v11, v5, v11

    .line 161
    .line 162
    sub-double v13, v3, v13

    .line 163
    .line 164
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    add-double/2addr v9, v11

    .line 169
    aput-wide v9, v15, v8

    .line 170
    .line 171
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    move-wide v13, v3

    .line 174
    move-wide v11, v5

    .line 175
    move-wide/from16 v4, v20

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    iput-wide v9, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    :goto_3
    if-ge v1, v6, :cond_9

    .line 182
    .line 183
    aget-wide v2, v15, v1

    .line 184
    .line 185
    div-double/2addr v2, v9

    .line 186
    aput-wide v2, v15, v1

    .line 187
    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_9
    const/4 v14, 0x0

    .line 192
    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 193
    .line 194
    array-length v2, v1

    .line 195
    if-ge v14, v2, :cond_c

    .line 196
    .line 197
    int-to-double v2, v14

    .line 198
    array-length v4, v1

    .line 199
    const/4 v5, -0x1

    .line 200
    add-int/2addr v4, v5

    .line 201
    int-to-double v8, v4

    .line 202
    div-double/2addr v2, v8

    .line 203
    invoke-static {v15, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-ltz v4, :cond_a

    .line 208
    .line 209
    int-to-double v2, v4

    .line 210
    int-to-double v8, v7

    .line 211
    div-double/2addr v2, v8

    .line 212
    aput-wide v2, v1, v14

    .line 213
    .line 214
    const-wide/16 v8, 0x0

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_a
    if-ne v4, v5, :cond_b

    .line 218
    .line 219
    const-wide/16 v8, 0x0

    .line 220
    .line 221
    aput-wide v8, v1, v14

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_b
    const-wide/16 v8, 0x0

    .line 225
    .line 226
    neg-int v4, v4

    .line 227
    add-int/lit8 v6, v4, -0x2

    .line 228
    .line 229
    add-int/2addr v4, v5

    .line 230
    int-to-double v10, v6

    .line 231
    aget-wide v12, v15, v6

    .line 232
    .line 233
    sub-double/2addr v2, v12

    .line 234
    aget-wide v16, v15, v4

    .line 235
    .line 236
    sub-double v16, v16, v12

    .line 237
    .line 238
    div-double v2, v2, v16

    .line 239
    .line 240
    add-double/2addr v2, v10

    .line 241
    int-to-double v10, v7

    .line 242
    div-double/2addr v2, v10

    .line 243
    aput-wide v2, v1, v14

    .line 244
    .line 245
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_c
    iget-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 249
    .line 250
    iget-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 251
    .line 252
    mul-double/2addr v1, v3

    .line 253
    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 254
    .line 255
    return-void

    .line 256
    :cond_d
    :goto_6
    move-wide/from16 v20, v4

    .line 257
    .line 258
    move v3, v15

    .line 259
    iput-boolean v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->linear:Z

    .line 260
    .line 261
    iput-wide v6, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    .line 262
    .line 263
    move-wide/from16 v3, p10

    .line 264
    .line 265
    iput-wide v3, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    .line 266
    .line 267
    iput-wide v8, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    .line 268
    .line 269
    iput-wide v12, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    .line 270
    .line 271
    move-wide/from16 v3, v20

    .line 272
    .line 273
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 274
    .line 275
    .line 276
    move-result-wide v5

    .line 277
    iput-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    .line 278
    .line 279
    mul-double v5, v5, v17

    .line 280
    .line 281
    iput-wide v5, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 282
    .line 283
    sub-double v5, p4, p2

    .line 284
    .line 285
    div-double v4, v3, v5

    .line 286
    .line 287
    iput-wide v4, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 288
    .line 289
    sub-double v3, p4, p2

    .line 290
    .line 291
    div-double/2addr v1, v3

    .line 292
    iput-wide v1, v0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 293
    .line 294
    return-void
.end method


# virtual methods
.method public final getDX()D
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 4
    .line 5
    mul-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 7
    .line 8
    neg-double v2, v2

    .line 9
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 10
    .line 11
    mul-double/2addr v2, v4

    .line 12
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    div-double/2addr v4, v2

    .line 19
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    neg-double v0, v0

    .line 24
    :cond_0
    mul-double/2addr v0, v4

    .line 25
    return-wide v0
.end method

.method public final getDY()D
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 4
    .line 5
    mul-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 7
    .line 8
    neg-double v2, v2

    .line 9
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 10
    .line 11
    mul-double/2addr v2, v4

    .line 12
    iget-wide v4, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    div-double/2addr v4, v0

    .line 19
    iget-boolean p0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    neg-double v0, v2

    .line 24
    mul-double/2addr v0, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    mul-double v0, v2, v4

    .line 27
    .line 28
    :goto_0
    return-wide v0
.end method

.method public final getLinearX(D)D
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 2
    .line 3
    sub-double/2addr p1, v0

    .line 4
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 5
    .line 6
    mul-double/2addr p1, v0

    .line 7
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX2:D

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mX1:D

    .line 10
    .line 11
    sub-double/2addr v0, v2

    .line 12
    mul-double/2addr v0, p1

    .line 13
    add-double/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public final getLinearY(D)D
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 2
    .line 3
    sub-double/2addr p1, v0

    .line 4
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 5
    .line 6
    mul-double/2addr p1, v0

    .line 7
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY2:D

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mY1:D

    .line 10
    .line 11
    sub-double/2addr v0, v2

    .line 12
    mul-double/2addr v0, p1

    .line 13
    add-double/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public final getX()D
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 4
    .line 5
    mul-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    .line 7
    .line 8
    add-double/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getY()D
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 4
    .line 5
    mul-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    .line 7
    .line 8
    add-double/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final setPoint(D)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 6
    .line 7
    sub-double/2addr v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 10
    .line 11
    sub-double v0, p1, v0

    .line 12
    .line 13
    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    .line 14
    .line 15
    mul-double/2addr v0, p1

    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    cmpg-double v2, v0, p1

    .line 19
    .line 20
    if-gtz v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    cmpl-double v2, v0, p1

    .line 26
    .line 27
    if-ltz v2, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mLut:[D

    .line 31
    .line 32
    array-length p2, p1

    .line 33
    add-int/lit8 p2, p2, -0x1

    .line 34
    .line 35
    int-to-double v2, p2

    .line 36
    mul-double/2addr v0, v2

    .line 37
    double-to-int p2, v0

    .line 38
    int-to-double v2, p2

    .line 39
    sub-double/2addr v0, v2

    .line 40
    aget-wide v2, p1, p2

    .line 41
    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    aget-wide p1, p1, p2

    .line 45
    .line 46
    sub-double/2addr p1, v2

    .line 47
    mul-double/2addr p1, v0

    .line 48
    add-double/2addr p1, v2

    .line 49
    :goto_1
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-double/2addr p1, v0

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    .line 60
    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    .line 66
    .line 67
    return-void
.end method
