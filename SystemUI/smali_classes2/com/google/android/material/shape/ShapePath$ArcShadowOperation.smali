.class public final Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    iget-object v2, v2, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 10
    .line 11
    iget v3, v2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    .line 12
    .line 13
    iget v4, v2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    .line 14
    .line 15
    new-instance v5, Landroid/graphics/RectF;

    .line 16
    .line 17
    iget v7, v2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    .line 18
    .line 19
    iget v8, v2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    .line 20
    .line 21
    iget v9, v2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    .line 22
    .line 23
    iget v2, v2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    .line 24
    .line 25
    invoke-direct {v5, v7, v8, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    cmpg-float v7, v4, v2

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, 0x0

    .line 36
    if-gez v7, :cond_0

    .line 37
    .line 38
    move v7, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v7, v9

    .line 41
    :goto_0
    iget-object v10, v0, Lcom/google/android/material/shadow/ShadowRenderer;->scratch:Landroid/graphics/Path;

    .line 42
    .line 43
    sget-object v15, Lcom/google/android/material/shadow/ShadowRenderer;->cornerColors:[I

    .line 44
    .line 45
    const/4 v11, 0x3

    .line 46
    const/4 v12, 0x2

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    aput v9, v15, v9

    .line 50
    .line 51
    iget v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 52
    .line 53
    aput v9, v15, v8

    .line 54
    .line 55
    iget v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 56
    .line 57
    aput v9, v15, v12

    .line 58
    .line 59
    iget v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 60
    .line 61
    aput v9, v15, v11

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    invoke-virtual {v10, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10, v5, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 82
    .line 83
    .line 84
    neg-int v13, v1

    .line 85
    int-to-float v13, v13

    .line 86
    invoke-virtual {v5, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 87
    .line 88
    .line 89
    aput v9, v15, v9

    .line 90
    .line 91
    iget v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowStartColor:I

    .line 92
    .line 93
    aput v9, v15, v8

    .line 94
    .line 95
    iget v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowMiddleColor:I

    .line 96
    .line 97
    aput v9, v15, v12

    .line 98
    .line 99
    iget v9, v0, Lcom/google/android/material/shadow/ShadowRenderer;->shadowEndColor:I

    .line 100
    .line 101
    aput v9, v15, v11

    .line 102
    .line 103
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    const/high16 v11, 0x40000000    # 2.0f

    .line 108
    .line 109
    div-float v14, v9, v11

    .line 110
    .line 111
    cmpg-float v2, v14, v2

    .line 112
    .line 113
    if-gtz v2, :cond_2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    int-to-float v1, v1

    .line 117
    div-float/2addr v1, v14

    .line 118
    const/high16 v2, 0x3f800000    # 1.0f

    .line 119
    .line 120
    sub-float v1, v2, v1

    .line 121
    .line 122
    sub-float v9, v2, v1

    .line 123
    .line 124
    div-float/2addr v9, v11

    .line 125
    add-float/2addr v9, v1

    .line 126
    sget-object v16, Lcom/google/android/material/shadow/ShadowRenderer;->cornerPositions:[F

    .line 127
    .line 128
    aput v1, v16, v8

    .line 129
    .line 130
    aput v9, v16, v12

    .line 131
    .line 132
    new-instance v1, Landroid/graphics/RadialGradient;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 143
    .line 144
    move-object v11, v1

    .line 145
    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 146
    .line 147
    .line 148
    iget-object v8, v0, Lcom/google/android/material/shadow/ShadowRenderer;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 154
    .line 155
    .line 156
    move-object/from16 v1, p1

    .line 157
    .line 158
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    div-float/2addr v1, v9

    .line 170
    invoke-virtual {v6, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 171
    .line 172
    .line 173
    if-nez v7, :cond_3

    .line 174
    .line 175
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 176
    .line 177
    invoke-virtual {v6, v10, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 178
    .line 179
    .line 180
    iget-object v0, v0, Lcom/google/android/material/shadow/ShadowRenderer;->transparentPaint:Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-virtual {v6, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    const/4 v7, 0x1

    .line 186
    move-object/from16 v0, p4

    .line 187
    .line 188
    move-object v1, v5

    .line 189
    move v2, v3

    .line 190
    move v3, v4

    .line 191
    move v4, v7

    .line 192
    move-object v5, v8

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 197
    .line 198
    .line 199
    :goto_2
    return-void
.end method
