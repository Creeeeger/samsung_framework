.class public final Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I
    .locals 20

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string v1, "ExtractAppIconUtils"

    .line 5
    .line 6
    const-string v2, "The bitmap provided to processDominantColorInImage() is null. using default color."

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/edgelighting/utils/DrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/high16 v2, 0x437f0000    # 255.0f

    .line 17
    .line 18
    const/16 v3, 0x14

    .line 19
    .line 20
    int-to-float v4, v3

    .line 21
    div-float/2addr v2, v4

    .line 22
    new-instance v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;

    .line 23
    .line 24
    invoke-direct {v4}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    mul-int v7, v5, v6

    .line 36
    .line 37
    div-int/lit8 v7, v7, 0x2

    .line 38
    .line 39
    int-to-double v8, v3

    .line 40
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 41
    .line 42
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    double-to-int v8, v8

    .line 47
    new-array v8, v8, [I

    .line 48
    .line 49
    move v9, v0

    .line 50
    move v10, v9

    .line 51
    move v11, v10

    .line 52
    :goto_0
    if-ge v9, v5, :cond_b

    .line 53
    .line 54
    move v12, v0

    .line 55
    :goto_1
    if-ge v12, v6, :cond_9

    .line 56
    .line 57
    invoke-virtual {v1, v9, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    const/16 v15, 0xfa

    .line 66
    .line 67
    if-ge v14, v15, :cond_2

    .line 68
    .line 69
    move-object/from16 v18, v1

    .line 70
    .line 71
    :cond_1
    move/from16 v16, v2

    .line 72
    .line 73
    move-object/from16 v19, v8

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    float-to-int v3, v2

    .line 90
    div-int v16, v14, v3

    .line 91
    .line 92
    add-int v16, v16, v15

    .line 93
    .line 94
    mul-int/2addr v3, v0

    .line 95
    add-int v3, v3, v16

    .line 96
    .line 97
    aget v16, v8, v3

    .line 98
    .line 99
    const/16 v17, 0x1

    .line 100
    .line 101
    move-object/from16 v18, v1

    .line 102
    .line 103
    add-int/lit8 v1, v16, 0x1

    .line 104
    .line 105
    aput v1, v8, v3

    .line 106
    .line 107
    if-le v1, v11, :cond_3

    .line 108
    .line 109
    invoke-static {v14, v15, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestColor:I

    .line 114
    .line 115
    move v11, v1

    .line 116
    :cond_3
    if-le v1, v10, :cond_1

    .line 117
    .line 118
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    move/from16 v16, v2

    .line 123
    .line 124
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-ne v3, v2, :cond_4

    .line 129
    .line 130
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-ne v2, v3, :cond_4

    .line 139
    .line 140
    move-object/from16 v19, v8

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    sub-int/2addr v2, v3

    .line 152
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    sub-int/2addr v3, v13

    .line 161
    const/4 v13, 0x5

    .line 162
    move-object/from16 v19, v8

    .line 163
    .line 164
    if-gt v2, v13, :cond_6

    .line 165
    .line 166
    const/4 v8, -0x5

    .line 167
    if-ge v2, v8, :cond_5

    .line 168
    .line 169
    if-gt v3, v13, :cond_6

    .line 170
    .line 171
    :cond_5
    if-ge v3, v8, :cond_7

    .line 172
    .line 173
    :cond_6
    const/16 v17, 0x0

    .line 174
    .line 175
    :cond_7
    :goto_2
    if-nez v17, :cond_8

    .line 176
    .line 177
    invoke-static {v14, v15, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput v0, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestMatchingColor:I

    .line 182
    .line 183
    move v10, v1

    .line 184
    if-le v1, v7, :cond_8

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_8
    :goto_3
    add-int/lit8 v12, v12, 0x14

    .line 188
    .line 189
    move/from16 v2, v16

    .line 190
    .line 191
    move-object/from16 v1, v18

    .line 192
    .line 193
    move-object/from16 v8, v19

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    const/16 v3, 0x14

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_9
    move-object/from16 v18, v1

    .line 201
    .line 202
    move/from16 v16, v2

    .line 203
    .line 204
    move-object/from16 v19, v8

    .line 205
    .line 206
    :goto_4
    if-le v11, v7, :cond_a

    .line 207
    .line 208
    const/16 v0, 0x14

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_a
    add-int/lit8 v9, v9, 0x14

    .line 212
    .line 213
    move/from16 v2, v16

    .line 214
    .line 215
    move-object/from16 v1, v18

    .line 216
    .line 217
    move-object/from16 v8, v19

    .line 218
    .line 219
    const/4 v0, 0x0

    .line 220
    const/16 v3, 0x14

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_b
    move v0, v3

    .line 225
    :goto_5
    div-int/2addr v5, v0

    .line 226
    div-int/2addr v6, v0

    .line 227
    mul-int/2addr v6, v5

    .line 228
    int-to-float v0, v6

    .line 229
    const v1, 0x3ba3d70a    # 0.005f

    .line 230
    .line 231
    .line 232
    mul-float/2addr v0, v1

    .line 233
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-le v10, v0, :cond_c

    .line 238
    .line 239
    iget v0, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestMatchingColor:I

    .line 240
    .line 241
    return v0

    .line 242
    :cond_c
    iget v0, v4, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils$ColorBucket;->bestColor:I

    .line 243
    .line 244
    return v0
.end method
