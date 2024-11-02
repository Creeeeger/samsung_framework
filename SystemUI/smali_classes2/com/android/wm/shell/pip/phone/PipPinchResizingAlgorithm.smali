.class public final Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTmpDownCentroid:Landroid/graphics/PointF;

.field public final mTmpDownVector:Landroid/graphics/PointF;

.field public final mTmpLastCentroid:Landroid/graphics/PointF;

.field public final mTmpLastVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    float-to-double v0, v0

    .line 7
    iget v2, p2, Landroid/graphics/PointF;->y:F

    .line 8
    .line 9
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 10
    .line 11
    sub-float/2addr v2, v3

    .line 12
    float-to-double v2, v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-float v0, v0

    .line 18
    iget v1, p4, Landroid/graphics/PointF;->x:F

    .line 19
    .line 20
    iget v2, p3, Landroid/graphics/PointF;->x:F

    .line 21
    .line 22
    sub-float/2addr v1, v2

    .line 23
    float-to-double v1, v1

    .line 24
    iget v3, p4, Landroid/graphics/PointF;->y:F

    .line 25
    .line 26
    iget v4, p3, Landroid/graphics/PointF;->y:F

    .line 27
    .line 28
    sub-float/2addr v3, v4

    .line 29
    float-to-double v3, v3

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    double-to-float v1, v1

    .line 35
    iget v2, p5, Landroid/graphics/Point;->x:I

    .line 36
    .line 37
    int-to-float v2, v2

    .line 38
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    div-float/2addr v2, v3

    .line 44
    iget p5, p5, Landroid/graphics/Point;->y:I

    .line 45
    .line 46
    int-to-float p5, p5

    .line 47
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    div-float/2addr p5, v3

    .line 53
    invoke-static {v2, p5}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result p5

    .line 57
    iget v2, p6, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    int-to-float v2, v2

    .line 60
    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    div-float/2addr v2, v3

    .line 66
    iget p6, p6, Landroid/graphics/Point;->y:I

    .line 67
    .line 68
    int-to-float p6, p6

    .line 69
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    int-to-float v3, v3

    .line 74
    div-float/2addr p6, v3

    .line 75
    invoke-static {v2, p6}, Ljava/lang/Math;->min(FF)F

    .line 76
    .line 77
    .line 78
    move-result p6

    .line 79
    div-float/2addr v1, v0

    .line 80
    sub-float v0, v1, p6

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    cmpl-float v3, v0, v2

    .line 84
    .line 85
    if-lez v3, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move v0, v2

    .line 89
    :goto_0
    sub-float/2addr p5, v2

    .line 90
    const/high16 v3, 0x3e800000    # 0.25f

    .line 91
    .line 92
    mul-float/2addr v0, v3

    .line 93
    add-float/2addr v0, p6

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 95
    .line 96
    .line 97
    move-result p6

    .line 98
    invoke-static {p5, p6}, Ljava/lang/Math;->max(FF)F

    .line 99
    .line 100
    .line 101
    move-result p5

    .line 102
    invoke-virtual {p8, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    .line 104
    .line 105
    const/high16 p6, 0x3f800000    # 1.0f

    .line 106
    .line 107
    cmpl-float p7, p5, p6

    .line 108
    .line 109
    if-eqz p7, :cond_1

    .line 110
    .line 111
    invoke-virtual {p8}, Landroid/graphics/Rect;->centerX()I

    .line 112
    .line 113
    .line 114
    move-result p7

    .line 115
    invoke-virtual {p8}, Landroid/graphics/Rect;->centerY()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    neg-int v1, p7

    .line 120
    neg-int v3, v0

    .line 121
    invoke-virtual {p8, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p8, p5}, Landroid/graphics/Rect;->scale(F)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p8, p7, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 128
    .line 129
    .line 130
    :cond_1
    iget-object p5, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    .line 131
    .line 132
    iget p7, p2, Landroid/graphics/PointF;->x:F

    .line 133
    .line 134
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 135
    .line 136
    add-float/2addr p7, v0

    .line 137
    const/high16 v0, 0x40000000    # 2.0f

    .line 138
    .line 139
    div-float/2addr p7, v0

    .line 140
    iget v1, p2, Landroid/graphics/PointF;->y:F

    .line 141
    .line 142
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 143
    .line 144
    add-float/2addr v1, v3

    .line 145
    div-float/2addr v1, v0

    .line 146
    invoke-virtual {p5, p7, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    .line 148
    .line 149
    iget-object p7, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    .line 150
    .line 151
    iget v1, p4, Landroid/graphics/PointF;->x:F

    .line 152
    .line 153
    iget v3, p3, Landroid/graphics/PointF;->x:F

    .line 154
    .line 155
    add-float/2addr v1, v3

    .line 156
    div-float/2addr v1, v0

    .line 157
    iget v3, p4, Landroid/graphics/PointF;->y:F

    .line 158
    .line 159
    iget v4, p3, Landroid/graphics/PointF;->y:F

    .line 160
    .line 161
    add-float/2addr v3, v4

    .line 162
    div-float/2addr v3, v0

    .line 163
    invoke-virtual {p7, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 164
    .line 165
    .line 166
    iget v0, p7, Landroid/graphics/PointF;->x:F

    .line 167
    .line 168
    iget v1, p5, Landroid/graphics/PointF;->x:F

    .line 169
    .line 170
    sub-float/2addr v0, v1

    .line 171
    float-to-int v0, v0

    .line 172
    iget p7, p7, Landroid/graphics/PointF;->y:F

    .line 173
    .line 174
    iget p5, p5, Landroid/graphics/PointF;->y:F

    .line 175
    .line 176
    sub-float/2addr p7, p5

    .line 177
    float-to-int p5, p7

    .line 178
    invoke-virtual {p8, v0, p5}, Landroid/graphics/Rect;->offset(II)V

    .line 179
    .line 180
    .line 181
    iget-object p5, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    .line 182
    .line 183
    iget p7, p2, Landroid/graphics/PointF;->x:F

    .line 184
    .line 185
    iget p8, p1, Landroid/graphics/PointF;->x:F

    .line 186
    .line 187
    sub-float/2addr p7, p8

    .line 188
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 189
    .line 190
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 191
    .line 192
    sub-float/2addr p2, p1

    .line 193
    invoke-virtual {p5, p7, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    .line 197
    .line 198
    iget p1, p4, Landroid/graphics/PointF;->x:F

    .line 199
    .line 200
    iget p2, p3, Landroid/graphics/PointF;->x:F

    .line 201
    .line 202
    sub-float/2addr p1, p2

    .line 203
    iget p2, p4, Landroid/graphics/PointF;->y:F

    .line 204
    .line 205
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 206
    .line 207
    sub-float/2addr p2, p3

    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 209
    .line 210
    .line 211
    iget p1, p5, Landroid/graphics/PointF;->x:F

    .line 212
    .line 213
    iget p2, p0, Landroid/graphics/PointF;->y:F

    .line 214
    .line 215
    mul-float p3, p1, p2

    .line 216
    .line 217
    iget p4, p5, Landroid/graphics/PointF;->y:F

    .line 218
    .line 219
    iget p0, p0, Landroid/graphics/PointF;->x:F

    .line 220
    .line 221
    mul-float p5, p4, p0

    .line 222
    .line 223
    sub-float/2addr p3, p5

    .line 224
    float-to-double p7, p3

    .line 225
    mul-float/2addr p1, p0

    .line 226
    mul-float/2addr p4, p2

    .line 227
    add-float/2addr p4, p1

    .line 228
    float-to-double p0, p4

    .line 229
    invoke-static {p7, p8, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    .line 230
    .line 231
    .line 232
    move-result-wide p0

    .line 233
    double-to-float p0, p0

    .line 234
    float-to-double p0, p0

    .line 235
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 236
    .line 237
    .line 238
    move-result-wide p0

    .line 239
    double-to-float p0, p0

    .line 240
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-nez p2, :cond_2

    .line 249
    .line 250
    move p4, v2

    .line 251
    goto :goto_1

    .line 252
    :cond_2
    const/high16 p2, 0x42340000    # 45.0f

    .line 253
    .line 254
    div-float/2addr p0, p2

    .line 255
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 256
    .line 257
    .line 258
    move-result p3

    .line 259
    div-float p3, p0, p3

    .line 260
    .line 261
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    sub-float/2addr p0, p6

    .line 266
    mul-float p4, p0, p0

    .line 267
    .line 268
    mul-float/2addr p4, p0

    .line 269
    add-float/2addr p4, p6

    .line 270
    mul-float/2addr p4, p3

    .line 271
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    cmpl-float p0, p0, p6

    .line 276
    .line 277
    if-ltz p0, :cond_3

    .line 278
    .line 279
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    div-float/2addr p4, p0

    .line 284
    :cond_3
    const p0, 0x3ecccccd    # 0.4f

    .line 285
    .line 286
    .line 287
    mul-float/2addr p4, p0

    .line 288
    mul-float/2addr p4, p2

    .line 289
    :goto_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    const/high16 p2, 0x40a00000    # 5.0f

    .line 294
    .line 295
    sub-float/2addr p0, p2

    .line 296
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    mul-float/2addr p0, p1

    .line 301
    return p0
.end method
