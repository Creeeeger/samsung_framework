.class public final Lcom/android/launcher3/icons/ColorExtractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mTmpHsv:[F

.field public final mTmpHueScoreHistogram:[F

.field public final mTmpPixels:[I

.field public final mTmpRgbScores:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    .line 8
    .line 9
    const/16 v0, 0x168

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    .line 14
    .line 15
    const/16 v0, 0x14

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    .line 20
    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final findDominantColorByHue(Landroid/graphics/Bitmap;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    mul-int v3, v1, v2

    .line 12
    .line 13
    const/16 v4, 0x14

    .line 14
    .line 15
    div-int/2addr v3, v4

    .line 16
    int-to-double v5, v3

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    double-to-int v3, v5

    .line 22
    const/4 v5, 0x1

    .line 23
    if-ge v3, v5, :cond_0

    .line 24
    .line 25
    move v3, v5

    .line 26
    :cond_0
    iget-object v6, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 30
    .line 31
    .line 32
    iget-object v8, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    .line 33
    .line 34
    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 35
    .line 36
    .line 37
    iget-object v7, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([II)V

    .line 41
    .line 42
    .line 43
    const/4 v11, -0x1

    .line 44
    move v12, v9

    .line 45
    move v13, v12

    .line 46
    const/high16 v14, -0x40800000    # -1.0f

    .line 47
    .line 48
    :goto_0
    const/high16 v16, -0x1000000

    .line 49
    .line 50
    if-ge v12, v1, :cond_7

    .line 51
    .line 52
    move v10, v9

    .line 53
    :goto_1
    if-ge v10, v2, :cond_6

    .line 54
    .line 55
    move-object/from16 v15, p1

    .line 56
    .line 57
    invoke-virtual {v15, v10, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 58
    .line 59
    .line 60
    move-result v17

    .line 61
    shr-int/lit8 v5, v17, 0x18

    .line 62
    .line 63
    and-int/lit16 v5, v5, 0xff

    .line 64
    .line 65
    const/16 v4, 0x80

    .line 66
    .line 67
    if-ge v5, v4, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    or-int v4, v17, v16

    .line 71
    .line 72
    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 73
    .line 74
    .line 75
    aget v5, v6, v9

    .line 76
    .line 77
    float-to-int v5, v5

    .line 78
    if-ltz v5, :cond_4

    .line 79
    .line 80
    array-length v9, v8

    .line 81
    if-lt v5, v9, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/16 v9, 0x14

    .line 85
    .line 86
    if-ge v13, v9, :cond_3

    .line 87
    .line 88
    add-int/lit8 v18, v13, 0x1

    .line 89
    .line 90
    aput v4, v7, v13

    .line 91
    .line 92
    move/from16 v13, v18

    .line 93
    .line 94
    :cond_3
    const/4 v4, 0x1

    .line 95
    aget v18, v6, v4

    .line 96
    .line 97
    const/4 v4, 0x2

    .line 98
    aget v19, v6, v4

    .line 99
    .line 100
    mul-float v18, v18, v19

    .line 101
    .line 102
    aget v4, v8, v5

    .line 103
    .line 104
    add-float v4, v4, v18

    .line 105
    .line 106
    aput v4, v8, v5

    .line 107
    .line 108
    cmpl-float v18, v4, v14

    .line 109
    .line 110
    if-lez v18, :cond_5

    .line 111
    .line 112
    move v14, v4

    .line 113
    move v11, v5

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    :goto_2
    const/16 v9, 0x14

    .line 116
    .line 117
    :cond_5
    :goto_3
    add-int/2addr v10, v3

    .line 118
    move v4, v9

    .line 119
    const/4 v5, 0x1

    .line 120
    const/4 v9, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_6
    move-object/from16 v15, p1

    .line 123
    .line 124
    move v9, v4

    .line 125
    add-int/2addr v12, v3

    .line 126
    const/4 v5, 0x1

    .line 127
    const/4 v9, 0x0

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    iget-object v0, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    const/high16 v10, -0x40800000    # -1.0f

    .line 136
    .line 137
    :goto_4
    if-ge v1, v13, :cond_b

    .line 138
    .line 139
    aget v2, v7, v1

    .line 140
    .line 141
    invoke-static {v2, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 142
    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    aget v4, v6, v3

    .line 146
    .line 147
    float-to-int v4, v4

    .line 148
    if-ne v4, v11, :cond_9

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    aget v5, v6, v4

    .line 152
    .line 153
    const/4 v8, 0x2

    .line 154
    aget v9, v6, v8

    .line 155
    .line 156
    const/high16 v12, 0x42c80000    # 100.0f

    .line 157
    .line 158
    mul-float/2addr v12, v5

    .line 159
    float-to-int v12, v12

    .line 160
    const v14, 0x461c4000    # 10000.0f

    .line 161
    .line 162
    .line 163
    mul-float/2addr v14, v9

    .line 164
    float-to-int v14, v14

    .line 165
    add-int/2addr v12, v14

    .line 166
    mul-float/2addr v5, v9

    .line 167
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    check-cast v9, Ljava/lang/Float;

    .line 172
    .line 173
    if-nez v9, :cond_8

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    add-float/2addr v5, v9

    .line 181
    :goto_5
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    cmpl-float v9, v5, v10

    .line 189
    .line 190
    if-lez v9, :cond_a

    .line 191
    .line 192
    move/from16 v16, v2

    .line 193
    .line 194
    move v10, v5

    .line 195
    goto :goto_6

    .line 196
    :cond_9
    const/4 v4, 0x1

    .line 197
    const/4 v8, 0x2

    .line 198
    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_b
    return v16
.end method
