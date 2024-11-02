.class public final Lcom/airbnb/lottie/parser/KeyframeParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    const-string/jumbo v1, "t"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "s"

    .line 12
    .line 13
    .line 14
    const-string v3, "e"

    .line 15
    .line 16
    const-string/jumbo v4, "o"

    .line 17
    .line 18
    .line 19
    const-string v5, "i"

    .line 20
    .line 21
    const-string v6, "h"

    .line 22
    .line 23
    const-string/jumbo v7, "to"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v8, "ti"

    .line 27
    .line 28
    .line 29
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 38
    .line 39
    const-string/jumbo v0, "x"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "y"

    .line 43
    .line 44
    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    .line 1
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 12
    .line 13
    iget v0, p0, Landroid/graphics/PointF;->y:F

    .line 14
    .line 15
    const/high16 v3, -0x3d380000    # -100.0f

    .line 16
    .line 17
    const/high16 v4, 0x42c80000    # 100.0f

    .line 18
    .line 19
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 32
    .line 33
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 34
    .line 35
    invoke-static {v0, v3, v4}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 42
    .line 43
    iget v3, p0, Landroid/graphics/PointF;->y:F

    .line 44
    .line 45
    iget v4, p1, Landroid/graphics/PointF;->x:F

    .line 46
    .line 47
    sget-object v5, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    .line 48
    .line 49
    :try_start_0
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 50
    .line 51
    invoke-direct {v5, v1, v3, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "The Path cannot loop back on itself."

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 69
    .line 70
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 75
    .line 76
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 84
    .line 85
    new-instance v5, Landroid/view/animation/PathInterpolator;

    .line 86
    .line 87
    invoke-direct {v5, v0, p0, v1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 92
    .line 93
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-object v5
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;ZZ)Lcom/airbnb/lottie/value/Keyframe;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget-object v3, Lcom/airbnb/lottie/parser/KeyframeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 8
    .line 9
    sget-object v4, Lcom/airbnb/lottie/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    if-eqz p4, :cond_16

    .line 12
    .line 13
    if-eqz p5, :cond_16

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    const/16 v19, 0x0

    .line 31
    .line 32
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v20

    .line 36
    if-eqz v20, :cond_11

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 39
    .line 40
    .line 41
    move-result v20

    .line 42
    sget-object v6, Lcom/airbnb/lottie/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 43
    .line 44
    packed-switch v20, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    move-object/from16 v21, v3

    .line 48
    .line 49
    move-object/from16 v20, v4

    .line 50
    .line 51
    move-object/from16 p5, v9

    .line 52
    .line 53
    move-object v3, v14

    .line 54
    move-object/from16 p4, v15

    .line 55
    .line 56
    move-object v9, v5

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :pswitch_0
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    move-object/from16 v21, v3

    .line 67
    .line 68
    move-object/from16 v20, v4

    .line 69
    .line 70
    move-object v4, v9

    .line 71
    move-object v3, v14

    .line 72
    move-object/from16 p4, v15

    .line 73
    .line 74
    :goto_1
    move-object v9, v5

    .line 75
    goto/16 :goto_d

    .line 76
    .line 77
    :pswitch_1
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    goto :goto_0

    .line 82
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    const/4 v10, 0x1

    .line 87
    move-object/from16 v21, v3

    .line 88
    .line 89
    move-object/from16 v20, v4

    .line 90
    .line 91
    move-object v4, v9

    .line 92
    move-object v3, v14

    .line 93
    move-object/from16 p4, v15

    .line 94
    .line 95
    if-ne v6, v10, :cond_0

    .line 96
    .line 97
    const/4 v10, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    const/4 v10, 0x0

    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    move-object/from16 v20, v4

    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    move-object/from16 p4, v15

    .line 108
    .line 109
    sget-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 110
    .line 111
    if-ne v4, v15, :cond_8

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 114
    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v15, 0x0

    .line 120
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v21

    .line 124
    if-eqz v21, :cond_7

    .line 125
    .line 126
    move-object/from16 v21, v3

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    move-object/from16 p5, v9

    .line 135
    .line 136
    const/4 v9, 0x1

    .line 137
    if-eq v3, v9, :cond_1

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 140
    .line 141
    .line 142
    move-object v9, v5

    .line 143
    move-object v3, v14

    .line 144
    goto/16 :goto_6

    .line 145
    .line 146
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 151
    .line 152
    if-ne v3, v7, :cond_2

    .line 153
    .line 154
    move-object v3, v14

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 156
    .line 157
    .line 158
    move-result-wide v14

    .line 159
    double-to-float v7, v14

    .line 160
    move-object v9, v5

    .line 161
    move v15, v7

    .line 162
    goto :goto_6

    .line 163
    :cond_2
    move-object v3, v14

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 168
    .line 169
    .line 170
    move-result-wide v14

    .line 171
    double-to-float v9, v14

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    if-ne v14, v7, :cond_3

    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 179
    .line 180
    .line 181
    move-result-wide v14

    .line 182
    double-to-float v7, v14

    .line 183
    move v15, v7

    .line 184
    goto :goto_3

    .line 185
    :cond_3
    move v15, v9

    .line 186
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 187
    .line 188
    .line 189
    move v7, v9

    .line 190
    goto :goto_4

    .line 191
    :cond_4
    move-object/from16 p5, v9

    .line 192
    .line 193
    move-object v3, v14

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    sget-object v8, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 199
    .line 200
    if-ne v4, v8, :cond_5

    .line 201
    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 203
    .line 204
    .line 205
    move-result-wide v8

    .line 206
    double-to-float v4, v8

    .line 207
    move v8, v4

    .line 208
    :goto_4
    move-object v9, v5

    .line 209
    goto :goto_6

    .line 210
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 211
    .line 212
    .line 213
    move-object v9, v5

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    double-to-float v4, v4

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    if-ne v5, v8, :cond_6

    .line 224
    .line 225
    move v8, v4

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    double-to-float v4, v4

    .line 231
    goto :goto_5

    .line 232
    :cond_6
    move v8, v4

    .line 233
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 234
    .line 235
    .line 236
    move/from16 v22, v8

    .line 237
    .line 238
    move v8, v4

    .line 239
    move/from16 v4, v22

    .line 240
    .line 241
    :goto_6
    move-object v14, v3

    .line 242
    move-object v5, v9

    .line 243
    move-object/from16 v3, v21

    .line 244
    .line 245
    move-object/from16 v9, p5

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_7
    move-object/from16 v21, v3

    .line 249
    .line 250
    move-object/from16 p5, v9

    .line 251
    .line 252
    move-object v3, v14

    .line 253
    move-object v9, v5

    .line 254
    new-instance v5, Landroid/graphics/PointF;

    .line 255
    .line 256
    invoke-direct {v5, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 257
    .line 258
    .line 259
    new-instance v4, Landroid/graphics/PointF;

    .line 260
    .line 261
    invoke-direct {v4, v8, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 265
    .line 266
    .line 267
    move-object v8, v4

    .line 268
    move-object v7, v5

    .line 269
    goto/16 :goto_c

    .line 270
    .line 271
    :cond_8
    move-object/from16 v21, v3

    .line 272
    .line 273
    move-object/from16 p5, v9

    .line 274
    .line 275
    move-object v3, v14

    .line 276
    move-object v9, v5

    .line 277
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    goto/16 :goto_b

    .line 282
    .line 283
    :pswitch_4
    move-object/from16 v21, v3

    .line 284
    .line 285
    move-object/from16 v20, v4

    .line 286
    .line 287
    move-object/from16 p5, v9

    .line 288
    .line 289
    move-object v3, v14

    .line 290
    move-object/from16 p4, v15

    .line 291
    .line 292
    move-object v9, v5

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 298
    .line 299
    if-ne v4, v5, :cond_10

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 302
    .line 303
    .line 304
    const/4 v3, 0x0

    .line 305
    const/4 v4, 0x0

    .line 306
    const/4 v5, 0x0

    .line 307
    const/4 v9, 0x0

    .line 308
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    if-eqz v14, :cond_f

    .line 313
    .line 314
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    if-eqz v14, :cond_c

    .line 319
    .line 320
    const/4 v15, 0x1

    .line 321
    if-eq v14, v15, :cond_9

    .line 322
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 324
    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    sget-object v9, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 332
    .line 333
    if-ne v4, v9, :cond_a

    .line 334
    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 336
    .line 337
    .line 338
    move-result-wide v14

    .line 339
    double-to-float v9, v14

    .line 340
    move v4, v9

    .line 341
    goto :goto_7

    .line 342
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 346
    .line 347
    .line 348
    move-result-wide v14

    .line 349
    double-to-float v4, v14

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 351
    .line 352
    .line 353
    move-result-object v14

    .line 354
    if-ne v14, v9, :cond_b

    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 357
    .line 358
    .line 359
    move-result-wide v14

    .line 360
    double-to-float v9, v14

    .line 361
    goto :goto_8

    .line 362
    :cond_b
    move v9, v4

    .line 363
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 372
    .line 373
    if-ne v3, v5, :cond_d

    .line 374
    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 376
    .line 377
    .line 378
    move-result-wide v14

    .line 379
    double-to-float v3, v14

    .line 380
    move v5, v3

    .line 381
    goto :goto_7

    .line 382
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 383
    .line 384
    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 386
    .line 387
    .line 388
    move-result-wide v14

    .line 389
    double-to-float v3, v14

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 391
    .line 392
    .line 393
    move-result-object v14

    .line 394
    if-ne v14, v5, :cond_e

    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 397
    .line 398
    .line 399
    move-result-wide v14

    .line 400
    double-to-float v5, v14

    .line 401
    goto :goto_9

    .line 402
    :cond_e
    move v5, v3

    .line 403
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 404
    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_f
    new-instance v6, Landroid/graphics/PointF;

    .line 408
    .line 409
    invoke-direct {v6, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 410
    .line 411
    .line 412
    new-instance v3, Landroid/graphics/PointF;

    .line 413
    .line 414
    invoke-direct {v3, v5, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 418
    .line 419
    .line 420
    move-object v5, v3

    .line 421
    move-object v14, v6

    .line 422
    goto :goto_a

    .line 423
    :cond_10
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    move-object v14, v3

    .line 428
    move-object v11, v4

    .line 429
    move-object v5, v9

    .line 430
    :goto_a
    move-object/from16 v15, p4

    .line 431
    .line 432
    move-object/from16 v9, p5

    .line 433
    .line 434
    move-object/from16 v4, v20

    .line 435
    .line 436
    move-object/from16 v3, v21

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :pswitch_5
    move-object/from16 v21, v3

    .line 441
    .line 442
    move-object/from16 v20, v4

    .line 443
    .line 444
    move-object/from16 p5, v9

    .line 445
    .line 446
    move-object v3, v14

    .line 447
    move-object/from16 p4, v15

    .line 448
    .line 449
    move-object v9, v5

    .line 450
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v19

    .line 454
    goto :goto_b

    .line 455
    :pswitch_6
    move-object/from16 v21, v3

    .line 456
    .line 457
    move-object/from16 v20, v4

    .line 458
    .line 459
    move-object/from16 p5, v9

    .line 460
    .line 461
    move-object v3, v14

    .line 462
    move-object/from16 p4, v15

    .line 463
    .line 464
    move-object v9, v5

    .line 465
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v12

    .line 469
    :goto_b
    move-object/from16 v4, p5

    .line 470
    .line 471
    goto :goto_d

    .line 472
    :pswitch_7
    move-object/from16 v21, v3

    .line 473
    .line 474
    move-object/from16 v20, v4

    .line 475
    .line 476
    move-object/from16 p5, v9

    .line 477
    .line 478
    move-object v3, v14

    .line 479
    move-object/from16 p4, v15

    .line 480
    .line 481
    move-object v9, v5

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 483
    .line 484
    .line 485
    move-result-wide v4

    .line 486
    double-to-float v4, v4

    .line 487
    move/from16 v16, v4

    .line 488
    .line 489
    :goto_c
    move-object/from16 v15, p4

    .line 490
    .line 491
    move-object v14, v3

    .line 492
    move-object v5, v9

    .line 493
    move-object/from16 v4, v20

    .line 494
    .line 495
    move-object/from16 v3, v21

    .line 496
    .line 497
    move-object/from16 v9, p5

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :goto_d
    move-object/from16 v15, p4

    .line 502
    .line 503
    move-object v14, v3

    .line 504
    move-object v5, v9

    .line 505
    move-object/from16 v3, v21

    .line 506
    .line 507
    move-object v9, v4

    .line 508
    move-object/from16 v4, v20

    .line 509
    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :cond_11
    move-object/from16 v20, v4

    .line 513
    .line 514
    move-object/from16 p5, v9

    .line 515
    .line 516
    move-object v3, v14

    .line 517
    move-object/from16 p4, v15

    .line 518
    .line 519
    move-object v9, v5

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 521
    .line 522
    .line 523
    if-eqz v10, :cond_13

    .line 524
    .line 525
    move-object/from16 v19, v12

    .line 526
    .line 527
    :cond_12
    move-object/from16 v4, v20

    .line 528
    .line 529
    goto :goto_e

    .line 530
    :cond_13
    if-eqz v11, :cond_14

    .line 531
    .line 532
    if-eqz v13, :cond_14

    .line 533
    .line 534
    invoke-static {v11, v13}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    goto :goto_e

    .line 539
    :cond_14
    if-eqz v3, :cond_12

    .line 540
    .line 541
    if-eqz v9, :cond_12

    .line 542
    .line 543
    if-eqz v7, :cond_12

    .line 544
    .line 545
    if-eqz v8, :cond_12

    .line 546
    .line 547
    invoke-static {v3, v7}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-static {v9, v8}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    move-object v14, v0

    .line 556
    move-object v15, v1

    .line 557
    move-object/from16 v13, v19

    .line 558
    .line 559
    const/16 v18, 0x0

    .line 560
    .line 561
    goto :goto_f

    .line 562
    :goto_e
    move-object/from16 v18, v4

    .line 563
    .line 564
    move-object/from16 v13, v19

    .line 565
    .line 566
    const/4 v14, 0x0

    .line 567
    const/4 v15, 0x0

    .line 568
    :goto_f
    if-eqz v14, :cond_15

    .line 569
    .line 570
    if-eqz v15, :cond_15

    .line 571
    .line 572
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 573
    .line 574
    const/16 v17, 0x0

    .line 575
    .line 576
    move-object v10, v0

    .line 577
    move-object/from16 v11, p1

    .line 578
    .line 579
    move-object/from16 v8, p4

    .line 580
    .line 581
    invoke-direct/range {v10 .. v17}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 582
    .line 583
    .line 584
    goto :goto_10

    .line 585
    :cond_15
    move-object/from16 v8, p4

    .line 586
    .line 587
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 588
    .line 589
    const/4 v1, 0x0

    .line 590
    move-object v10, v0

    .line 591
    move-object/from16 v11, p1

    .line 592
    .line 593
    move-object/from16 v14, v18

    .line 594
    .line 595
    move/from16 v15, v16

    .line 596
    .line 597
    move-object/from16 v16, v1

    .line 598
    .line 599
    invoke-direct/range {v10 .. v16}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 600
    .line 601
    .line 602
    :goto_10
    iput-object v8, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 603
    .line 604
    move-object/from16 v4, p5

    .line 605
    .line 606
    iput-object v4, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 607
    .line 608
    return-object v0

    .line 609
    :cond_16
    move-object/from16 v21, v3

    .line 610
    .line 611
    move-object/from16 v20, v4

    .line 612
    .line 613
    if-eqz p4, :cond_1b

    .line 614
    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 616
    .line 617
    .line 618
    const/4 v3, 0x0

    .line 619
    const/4 v4, 0x0

    .line 620
    const/4 v5, 0x0

    .line 621
    const/4 v7, 0x0

    .line 622
    const/4 v8, 0x0

    .line 623
    const/4 v10, 0x0

    .line 624
    const/4 v12, 0x0

    .line 625
    const/16 v18, 0x0

    .line 626
    .line 627
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 628
    .line 629
    .line 630
    move-result v6

    .line 631
    if-eqz v6, :cond_18

    .line 632
    .line 633
    move-object/from16 v6, v21

    .line 634
    .line 635
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 636
    .line 637
    .line 638
    move-result v9

    .line 639
    const/high16 v11, 0x3f800000    # 1.0f

    .line 640
    .line 641
    packed-switch v9, :pswitch_data_1

    .line 642
    .line 643
    .line 644
    const/4 v9, 0x1

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    .line 646
    .line 647
    .line 648
    goto :goto_12

    .line 649
    :pswitch_8
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 650
    .line 651
    .line 652
    move-result-object v12

    .line 653
    goto :goto_12

    .line 654
    :pswitch_9
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    goto :goto_12

    .line 659
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    const/4 v9, 0x1

    .line 664
    move-object/from16 v21, v6

    .line 665
    .line 666
    if-ne v5, v9, :cond_17

    .line 667
    .line 668
    move v5, v9

    .line 669
    goto :goto_11

    .line 670
    :cond_17
    const/4 v5, 0x0

    .line 671
    goto :goto_11

    .line 672
    :pswitch_b
    const/4 v9, 0x1

    .line 673
    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    goto :goto_12

    .line 678
    :pswitch_c
    const/4 v9, 0x1

    .line 679
    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToPoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    goto :goto_12

    .line 684
    :pswitch_d
    const/4 v9, 0x1

    .line 685
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v18

    .line 689
    goto :goto_12

    .line 690
    :pswitch_e
    const/4 v9, 0x1

    .line 691
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    goto :goto_12

    .line 696
    :pswitch_f
    const/4 v9, 0x1

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 698
    .line 699
    .line 700
    move-result-wide v10

    .line 701
    double-to-float v10, v10

    .line 702
    :goto_12
    move-object/from16 v21, v6

    .line 703
    .line 704
    goto :goto_11

    .line 705
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 706
    .line 707
    .line 708
    if-eqz v5, :cond_19

    .line 709
    .line 710
    move-object v8, v7

    .line 711
    move-object/from16 v9, v20

    .line 712
    .line 713
    goto :goto_14

    .line 714
    :cond_19
    if-eqz v8, :cond_1a

    .line 715
    .line 716
    if-eqz v3, :cond_1a

    .line 717
    .line 718
    invoke-static {v8, v3}, Lcom/airbnb/lottie/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    goto :goto_13

    .line 723
    :cond_1a
    move-object/from16 v0, v20

    .line 724
    .line 725
    :goto_13
    move-object v9, v0

    .line 726
    move-object/from16 v8, v18

    .line 727
    .line 728
    :goto_14
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 729
    .line 730
    const/4 v11, 0x0

    .line 731
    move-object v5, v0

    .line 732
    move-object/from16 v6, p1

    .line 733
    .line 734
    invoke-direct/range {v5 .. v11}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 735
    .line 736
    .line 737
    iput-object v4, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 738
    .line 739
    iput-object v12, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 740
    .line 741
    return-object v0

    .line 742
    :cond_1b
    invoke-interface {v2, v0, v1}, Lcom/airbnb/lottie/parser/ValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 747
    .line 748
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    return-object v1

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
