.class public final Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    const-string/jumbo v0, "nm"

    .line 2
    .line 3
    .line 4
    const-string v1, "ind"

    .line 5
    .line 6
    const-string/jumbo v2, "refId"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "ty"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "parent"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "sw"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v6, "sh"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v7, "sc"

    .line 22
    .line 23
    .line 24
    const-string v8, "ks"

    .line 25
    .line 26
    const-string/jumbo v9, "tt"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v10, "masksProperties"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v11, "shapes"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v12, "t"

    .line 36
    .line 37
    .line 38
    const-string v13, "ef"

    .line 39
    .line 40
    const-string/jumbo v14, "sr"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v15, "st"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v16, "w"

    .line 47
    .line 48
    .line 49
    const-string v17, "h"

    .line 50
    .line 51
    const-string v18, "ip"

    .line 52
    .line 53
    const-string/jumbo v19, "op"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v20, "tm"

    .line 57
    .line 58
    .line 59
    const-string v21, "cl"

    .line 60
    .line 61
    const-string v22, "hd"

    .line 62
    .line 63
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 72
    .line 73
    const-string v0, "d"

    .line 74
    .line 75
    const-string v1, "a"

    .line 76
    .line 77
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 86
    .line 87
    const-string/jumbo v0, "ty"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v1, "nm"

    .line 91
    .line 92
    .line 93
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 102
    .line 103
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 6
    .line 7
    new-instance v10, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v8, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 18
    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    const-string v3, "UNSET"

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const-wide/16 v13, -0x1

    .line 37
    .line 38
    move-object/from16 v32, v1

    .line 39
    .line 40
    move/from16 v26, v2

    .line 41
    .line 42
    move-wide/from16 v16, v4

    .line 43
    .line 44
    move/from16 v23, v6

    .line 45
    .line 46
    move/from16 v24, v23

    .line 47
    .line 48
    move/from16 v25, v24

    .line 49
    .line 50
    move/from16 v34, v25

    .line 51
    .line 52
    move/from16 v27, v9

    .line 53
    .line 54
    move/from16 v28, v27

    .line 55
    .line 56
    move/from16 v29, v28

    .line 57
    .line 58
    move/from16 v37, v29

    .line 59
    .line 60
    move-wide/from16 v19, v13

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    const/16 v21, 0x0

    .line 66
    .line 67
    const/16 v22, 0x0

    .line 68
    .line 69
    const/16 v30, 0x0

    .line 70
    .line 71
    const/16 v31, 0x0

    .line 72
    .line 73
    const/16 v33, 0x0

    .line 74
    .line 75
    const/16 v35, 0x0

    .line 76
    .line 77
    const/16 v36, 0x0

    .line 78
    .line 79
    move-object v13, v3

    .line 80
    move/from16 v14, v37

    .line 81
    .line 82
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4d

    .line 87
    .line 88
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v4, 0x2

    .line 95
    const/4 v2, 0x1

    .line 96
    packed-switch v1, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    move v2, v6

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_20

    .line 107
    .line 108
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 109
    .line 110
    .line 111
    move-result v34

    .line 112
    goto :goto_1

    .line 113
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    goto :goto_1

    .line 118
    :pswitch_2
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 119
    .line 120
    .line 121
    move-result-object v33

    .line 122
    goto :goto_1

    .line 123
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    double-to-float v1, v1

    .line 128
    move/from16 v37, v1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    double-to-float v14, v1

    .line 136
    goto :goto_1

    .line 137
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    float-to-double v3, v3

    .line 146
    mul-double/2addr v1, v3

    .line 147
    double-to-float v1, v1

    .line 148
    move/from16 v29, v1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    float-to-double v3, v3

    .line 160
    mul-double/2addr v1, v3

    .line 161
    double-to-float v1, v1

    .line 162
    move/from16 v28, v1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 166
    .line 167
    .line 168
    move-result-wide v1

    .line 169
    double-to-float v1, v1

    .line 170
    move/from16 v27, v1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    double-to-float v1, v1

    .line 178
    move/from16 v26, v1

    .line 179
    .line 180
    :goto_1
    move v2, v6

    .line 181
    goto/16 :goto_20

    .line 182
    .line 183
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v39

    .line 195
    if-eqz v39, :cond_1f

    .line 196
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 198
    .line 199
    .line 200
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v39

    .line 204
    if-eqz v39, :cond_1e

    .line 205
    .line 206
    sget-object v9, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 207
    .line 208
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_1

    .line 213
    .line 214
    if-eq v9, v2, :cond_0

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_f

    .line 223
    .line 224
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_f

    .line 232
    .line 233
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    const/16 v15, 0x1d

    .line 238
    .line 239
    if-ne v9, v15, :cond_a

    .line 240
    .line 241
    sget-object v9, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 242
    .line 243
    const/16 v35, 0x0

    .line 244
    .line 245
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_1d

    .line 250
    .line 251
    sget-object v9, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 252
    .line 253
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_2

    .line 258
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 267
    .line 268
    .line 269
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-eqz v9, :cond_9

    .line 274
    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 276
    .line 277
    .line 278
    const/4 v9, 0x0

    .line 279
    :goto_6
    move v15, v6

    .line 280
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v40

    .line 284
    if-eqz v40, :cond_7

    .line 285
    .line 286
    sget-object v6, Lcom/airbnb/lottie/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 287
    .line 288
    invoke-virtual {v0, v6}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-eqz v6, :cond_5

    .line 293
    .line 294
    if-eq v6, v2, :cond_3

    .line 295
    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 300
    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_3
    if-eqz v15, :cond_4

    .line 304
    .line 305
    new-instance v9, Lcom/airbnb/lottie/model/content/BlurEffect;

    .line 306
    .line 307
    invoke-static {v0, v7, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-direct {v9, v6}, Lcom/airbnb/lottie/model/content/BlurEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 312
    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 316
    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-nez v6, :cond_6

    .line 324
    .line 325
    move v15, v2

    .line 326
    :goto_8
    const/4 v6, 0x0

    .line 327
    goto :goto_7

    .line 328
    :cond_6
    const/4 v6, 0x0

    .line 329
    goto :goto_6

    .line 330
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 331
    .line 332
    .line 333
    if-eqz v9, :cond_8

    .line 334
    .line 335
    move-object/from16 v35, v9

    .line 336
    .line 337
    :cond_8
    const/4 v6, 0x0

    .line 338
    goto :goto_5

    .line 339
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 340
    .line 341
    .line 342
    const/4 v6, 0x0

    .line 343
    goto :goto_4

    .line 344
    :cond_a
    const/16 v6, 0x19

    .line 345
    .line 346
    if-ne v9, v6, :cond_1c

    .line 347
    .line 348
    new-instance v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    .line 349
    .line 350
    invoke-direct {v6}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;-><init>()V

    .line 351
    .line 352
    .line 353
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-eqz v9, :cond_1a

    .line 358
    .line 359
    sget-object v9, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 360
    .line 361
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    if-eqz v9, :cond_b

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 375
    .line 376
    .line 377
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    if-eqz v9, :cond_19

    .line 382
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 384
    .line 385
    .line 386
    const-string v9, ""

    .line 387
    .line 388
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v15

    .line 392
    if-eqz v15, :cond_18

    .line 393
    .line 394
    sget-object v15, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 395
    .line 396
    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 397
    .line 398
    .line 399
    move-result v15

    .line 400
    if-eqz v15, :cond_17

    .line 401
    .line 402
    if-eq v15, v2, :cond_c

    .line 403
    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_e

    .line 411
    .line 412
    :cond_c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 416
    .line 417
    .line 418
    move-result v15

    .line 419
    const/4 v3, 0x4

    .line 420
    sparse-switch v15, :sswitch_data_0

    .line 421
    .line 422
    .line 423
    goto :goto_c

    .line 424
    :sswitch_0
    const-string v15, "Softness"

    .line 425
    .line 426
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v15

    .line 430
    if-nez v15, :cond_d

    .line 431
    .line 432
    goto :goto_c

    .line 433
    :cond_d
    move v15, v3

    .line 434
    goto :goto_d

    .line 435
    :sswitch_1
    const-string v15, "Shadow Color"

    .line 436
    .line 437
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v15

    .line 441
    if-nez v15, :cond_e

    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_e
    const/4 v15, 0x3

    .line 445
    goto :goto_d

    .line 446
    :sswitch_2
    const-string v15, "Direction"

    .line 447
    .line 448
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v15

    .line 452
    if-nez v15, :cond_f

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_f
    move v15, v4

    .line 456
    goto :goto_d

    .line 457
    :sswitch_3
    const-string v15, "Opacity"

    .line 458
    .line 459
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v15

    .line 463
    if-nez v15, :cond_10

    .line 464
    .line 465
    goto :goto_c

    .line 466
    :cond_10
    move v15, v2

    .line 467
    goto :goto_d

    .line 468
    :sswitch_4
    const-string v15, "Distance"

    .line 469
    .line 470
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v15

    .line 474
    if-nez v15, :cond_11

    .line 475
    .line 476
    goto :goto_c

    .line 477
    :cond_11
    const/4 v15, 0x0

    .line 478
    goto :goto_d

    .line 479
    :goto_c
    const/4 v15, -0x1

    .line 480
    :goto_d
    if-eqz v15, :cond_16

    .line 481
    .line 482
    if-eq v15, v2, :cond_15

    .line 483
    .line 484
    if-eq v15, v4, :cond_14

    .line 485
    .line 486
    const/4 v4, 0x3

    .line 487
    if-eq v15, v4, :cond_13

    .line 488
    .line 489
    if-eq v15, v3, :cond_12

    .line 490
    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 492
    .line 493
    .line 494
    goto :goto_e

    .line 495
    :cond_12
    invoke-static {v0, v7, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    iput-object v3, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 500
    .line 501
    goto :goto_e

    .line 502
    :cond_13
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    iput-object v3, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 507
    .line 508
    goto :goto_e

    .line 509
    :cond_14
    const/4 v3, 0x0

    .line 510
    invoke-static {v0, v7, v3}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    iput-object v4, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 515
    .line 516
    goto :goto_e

    .line 517
    :cond_15
    const/4 v3, 0x0

    .line 518
    invoke-static {v0, v7, v3}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    iput-object v4, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 523
    .line 524
    goto :goto_e

    .line 525
    :cond_16
    invoke-static {v0, v7, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    iput-object v3, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 530
    .line 531
    goto :goto_e

    .line 532
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    :goto_e
    const/4 v4, 0x2

    .line 537
    goto/16 :goto_b

    .line 538
    .line 539
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 540
    .line 541
    .line 542
    const/4 v4, 0x2

    .line 543
    goto/16 :goto_a

    .line 544
    .line 545
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 546
    .line 547
    .line 548
    const/4 v4, 0x2

    .line 549
    goto/16 :goto_9

    .line 550
    .line 551
    :cond_1a
    iget-object v3, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 552
    .line 553
    if-eqz v3, :cond_1b

    .line 554
    .line 555
    iget-object v4, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 556
    .line 557
    if-eqz v4, :cond_1b

    .line 558
    .line 559
    iget-object v9, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 560
    .line 561
    if-eqz v9, :cond_1b

    .line 562
    .line 563
    iget-object v15, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 564
    .line 565
    if-eqz v15, :cond_1b

    .line 566
    .line 567
    iget-object v6, v6, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 568
    .line 569
    if-eqz v6, :cond_1b

    .line 570
    .line 571
    new-instance v36, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 572
    .line 573
    move-object/from16 v41, v36

    .line 574
    .line 575
    move-object/from16 v42, v3

    .line 576
    .line 577
    move-object/from16 v43, v4

    .line 578
    .line 579
    move-object/from16 v44, v9

    .line 580
    .line 581
    move-object/from16 v45, v15

    .line 582
    .line 583
    move-object/from16 v46, v6

    .line 584
    .line 585
    invoke-direct/range {v41 .. v46}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 586
    .line 587
    .line 588
    goto :goto_f

    .line 589
    :cond_1b
    const/16 v36, 0x0

    .line 590
    .line 591
    :cond_1c
    :goto_f
    const/4 v4, 0x2

    .line 592
    const/4 v6, 0x0

    .line 593
    :cond_1d
    const/4 v9, 0x0

    .line 594
    goto/16 :goto_3

    .line 595
    .line 596
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 597
    .line 598
    .line 599
    const/4 v4, 0x2

    .line 600
    const/4 v6, 0x0

    .line 601
    const/4 v9, 0x0

    .line 602
    goto/16 :goto_2

    .line 603
    .line 604
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 605
    .line 606
    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 610
    .line 611
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_15

    .line 625
    .line 626
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 627
    .line 628
    .line 629
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    if-eqz v1, :cond_2c

    .line 634
    .line 635
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 636
    .line 637
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_2b

    .line 642
    .line 643
    if-eq v1, v2, :cond_20

    .line 644
    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 649
    .line 650
    .line 651
    goto :goto_10

    .line 652
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 653
    .line 654
    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-eqz v1, :cond_29

    .line 660
    .line 661
    sget-object v1, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 662
    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 664
    .line 665
    .line 666
    const/4 v1, 0x0

    .line 667
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-eqz v3, :cond_27

    .line 672
    .line 673
    sget-object v3, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 674
    .line 675
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    if-eqz v3, :cond_21

    .line 680
    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 682
    .line 683
    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 685
    .line 686
    .line 687
    goto :goto_11

    .line 688
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 689
    .line 690
    .line 691
    const/4 v1, 0x0

    .line 692
    const/4 v3, 0x0

    .line 693
    const/4 v4, 0x0

    .line 694
    const/4 v6, 0x0

    .line 695
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v9

    .line 699
    if-eqz v9, :cond_26

    .line 700
    .line 701
    sget-object v9, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 702
    .line 703
    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 704
    .line 705
    .line 706
    move-result v9

    .line 707
    if-eqz v9, :cond_25

    .line 708
    .line 709
    if-eq v9, v2, :cond_24

    .line 710
    .line 711
    const/4 v15, 0x2

    .line 712
    if-eq v9, v15, :cond_23

    .line 713
    .line 714
    const/4 v15, 0x3

    .line 715
    if-eq v9, v15, :cond_22

    .line 716
    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 718
    .line 719
    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 721
    .line 722
    .line 723
    goto :goto_12

    .line 724
    :cond_22
    invoke-static {v0, v7, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    goto :goto_12

    .line 729
    :cond_23
    invoke-static {v0, v7, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    goto :goto_12

    .line 734
    :cond_24
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    goto :goto_12

    .line 739
    :cond_25
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    goto :goto_12

    .line 744
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 745
    .line 746
    .line 747
    new-instance v9, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 748
    .line 749
    invoke-direct {v9, v1, v3, v4, v6}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 750
    .line 751
    .line 752
    move-object v1, v9

    .line 753
    goto :goto_11

    .line 754
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 755
    .line 756
    .line 757
    if-nez v1, :cond_28

    .line 758
    .line 759
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 760
    .line 761
    const/4 v3, 0x0

    .line 762
    invoke-direct {v1, v3, v3, v3, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 763
    .line 764
    .line 765
    goto :goto_13

    .line 766
    :cond_28
    const/4 v3, 0x0

    .line 767
    :goto_13
    move-object/from16 v31, v1

    .line 768
    .line 769
    goto :goto_14

    .line 770
    :cond_29
    const/4 v3, 0x0

    .line 771
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-eqz v1, :cond_2a

    .line 776
    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 778
    .line 779
    .line 780
    goto :goto_14

    .line 781
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_10

    .line 785
    .line 786
    :cond_2b
    const/4 v3, 0x0

    .line 787
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 788
    .line 789
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    sget-object v6, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    .line 794
    .line 795
    const/4 v9, 0x0

    .line 796
    invoke-static {v0, v7, v4, v6, v9}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-direct {v1, v4}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    .line 801
    .line 802
    .line 803
    move-object/from16 v30, v1

    .line 804
    .line 805
    goto/16 :goto_10

    .line 806
    .line 807
    :cond_2c
    const/4 v3, 0x0

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 809
    .line 810
    .line 811
    :goto_15
    const/4 v2, 0x0

    .line 812
    goto/16 :goto_20

    .line 813
    .line 814
    :pswitch_b
    const/4 v3, 0x0

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 816
    .line 817
    .line 818
    :cond_2d
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    if-eqz v1, :cond_2e

    .line 823
    .line 824
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    if-eqz v1, :cond_2d

    .line 829
    .line 830
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    goto :goto_16

    .line 834
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 835
    .line 836
    .line 837
    goto :goto_15

    .line 838
    :pswitch_c
    const/4 v3, 0x0

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 840
    .line 841
    .line 842
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    if-eqz v1, :cond_48

    .line 847
    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 849
    .line 850
    .line 851
    move-object v4, v3

    .line 852
    move-object v6, v4

    .line 853
    move-object v9, v6

    .line 854
    const/4 v1, 0x0

    .line 855
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 856
    .line 857
    .line 858
    move-result v15

    .line 859
    if-eqz v15, :cond_47

    .line 860
    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v15

    .line 865
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    const/16 v2, 0x6f

    .line 873
    .line 874
    if-eq v3, v2, :cond_35

    .line 875
    .line 876
    const/16 v2, 0xe04

    .line 877
    .line 878
    if-eq v3, v2, :cond_33

    .line 879
    .line 880
    const v2, 0x197f1

    .line 881
    .line 882
    .line 883
    if-eq v3, v2, :cond_31

    .line 884
    .line 885
    const v2, 0x3339a3

    .line 886
    .line 887
    .line 888
    if-eq v3, v2, :cond_2f

    .line 889
    .line 890
    goto :goto_19

    .line 891
    :cond_2f
    const-string/jumbo v2, "mode"

    .line 892
    .line 893
    .line 894
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    if-nez v2, :cond_30

    .line 899
    .line 900
    goto :goto_19

    .line 901
    :cond_30
    const/4 v2, 0x3

    .line 902
    goto :goto_1a

    .line 903
    :cond_31
    const-string v2, "inv"

    .line 904
    .line 905
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-nez v2, :cond_32

    .line 910
    .line 911
    goto :goto_19

    .line 912
    :cond_32
    const/4 v2, 0x2

    .line 913
    goto :goto_1a

    .line 914
    :cond_33
    const-string/jumbo v2, "pt"

    .line 915
    .line 916
    .line 917
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-nez v2, :cond_34

    .line 922
    .line 923
    goto :goto_19

    .line 924
    :cond_34
    const/4 v2, 0x1

    .line 925
    goto :goto_1a

    .line 926
    :cond_35
    const-string/jumbo v2, "o"

    .line 927
    .line 928
    .line 929
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-nez v2, :cond_36

    .line 934
    .line 935
    :goto_19
    const/4 v2, -0x1

    .line 936
    goto :goto_1a

    .line 937
    :cond_36
    const/4 v2, 0x0

    .line 938
    :goto_1a
    if-eqz v2, :cond_46

    .line 939
    .line 940
    const/4 v3, 0x1

    .line 941
    if-eq v2, v3, :cond_45

    .line 942
    .line 943
    const/4 v3, 0x2

    .line 944
    if-eq v2, v3, :cond_44

    .line 945
    .line 946
    const/4 v3, 0x3

    .line 947
    if-eq v2, v3, :cond_37

    .line 948
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 950
    .line 951
    .line 952
    goto/16 :goto_1d

    .line 953
    .line 954
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 962
    .line 963
    .line 964
    move-result v3

    .line 965
    const/16 v4, 0x61

    .line 966
    .line 967
    if-eq v3, v4, :cond_3e

    .line 968
    .line 969
    const/16 v4, 0x69

    .line 970
    .line 971
    if-eq v3, v4, :cond_3c

    .line 972
    .line 973
    const/16 v4, 0x6e

    .line 974
    .line 975
    if-eq v3, v4, :cond_3a

    .line 976
    .line 977
    const/16 v4, 0x73

    .line 978
    .line 979
    if-eq v3, v4, :cond_38

    .line 980
    .line 981
    goto :goto_1b

    .line 982
    :cond_38
    const-string/jumbo v3, "s"

    .line 983
    .line 984
    .line 985
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    move-result v2

    .line 989
    if-nez v2, :cond_39

    .line 990
    .line 991
    goto :goto_1b

    .line 992
    :cond_39
    const/4 v4, 0x3

    .line 993
    goto :goto_1c

    .line 994
    :cond_3a
    const-string/jumbo v3, "n"

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v2

    .line 1001
    if-nez v2, :cond_3b

    .line 1002
    .line 1003
    goto :goto_1b

    .line 1004
    :cond_3b
    const/4 v4, 0x2

    .line 1005
    goto :goto_1c

    .line 1006
    :cond_3c
    const-string v3, "i"

    .line 1007
    .line 1008
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    if-nez v2, :cond_3d

    .line 1013
    .line 1014
    goto :goto_1b

    .line 1015
    :cond_3d
    const/4 v4, 0x1

    .line 1016
    goto :goto_1c

    .line 1017
    :cond_3e
    const-string v3, "a"

    .line 1018
    .line 1019
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    if-nez v2, :cond_3f

    .line 1024
    .line 1025
    :goto_1b
    const/4 v4, -0x1

    .line 1026
    goto :goto_1c

    .line 1027
    :cond_3f
    const/4 v4, 0x0

    .line 1028
    :goto_1c
    if-eqz v4, :cond_43

    .line 1029
    .line 1030
    const/4 v2, 0x1

    .line 1031
    if-eq v4, v2, :cond_42

    .line 1032
    .line 1033
    const/4 v2, 0x2

    .line 1034
    if-eq v4, v2, :cond_41

    .line 1035
    .line 1036
    const/4 v2, 0x3

    .line 1037
    if-eq v4, v2, :cond_40

    .line 1038
    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    const-string v4, "Unknown mask mode "

    .line 1042
    .line 1043
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    const-string v4, ". Defaulting to Add."

    .line 1050
    .line 1051
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v3

    .line 1058
    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1062
    .line 1063
    goto :goto_1d

    .line 1064
    :cond_40
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1065
    .line 1066
    goto :goto_1d

    .line 1067
    :cond_41
    const/4 v2, 0x3

    .line 1068
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1069
    .line 1070
    goto :goto_1d

    .line 1071
    :cond_42
    const/4 v2, 0x3

    .line 1072
    const-string v3, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 1073
    .line 1074
    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1078
    .line 1079
    goto :goto_1d

    .line 1080
    :cond_43
    const/4 v2, 0x3

    .line 1081
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 1082
    .line 1083
    goto :goto_1d

    .line 1084
    :cond_44
    const/4 v2, 0x3

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    :goto_1d
    const/4 v2, 0x0

    .line 1090
    goto :goto_1e

    .line 1091
    :cond_45
    const/4 v2, 0x3

    .line 1092
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 1093
    .line 1094
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1095
    .line 1096
    .line 1097
    move-result v3

    .line 1098
    sget-object v15, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    .line 1099
    .line 1100
    const/4 v2, 0x0

    .line 1101
    invoke-static {v0, v7, v3, v15, v2}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    invoke-direct {v6, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_1e

    .line 1109
    :cond_46
    const/4 v2, 0x0

    .line 1110
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v9

    .line 1114
    :goto_1e
    const/4 v2, 0x1

    .line 1115
    const/4 v3, 0x0

    .line 1116
    goto/16 :goto_18

    .line 1117
    .line 1118
    :cond_47
    const/4 v2, 0x0

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1120
    .line 1121
    .line 1122
    new-instance v3, Lcom/airbnb/lottie/model/content/Mask;

    .line 1123
    .line 1124
    invoke-direct {v3, v4, v6, v9, v1}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    .line 1129
    .line 1130
    const/4 v2, 0x1

    .line 1131
    const/4 v3, 0x0

    .line 1132
    goto/16 :goto_17

    .line 1133
    .line 1134
    :cond_48
    const/4 v2, 0x0

    .line 1135
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    iget v3, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1140
    .line 1141
    add-int/2addr v3, v1

    .line 1142
    iput v3, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1143
    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 1145
    .line 1146
    .line 1147
    goto/16 :goto_20

    .line 1148
    .line 1149
    :pswitch_d
    move v2, v6

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1151
    .line 1152
    .line 1153
    move-result v1

    .line 1154
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v3

    .line 1158
    array-length v3, v3

    .line 1159
    if-lt v1, v3, :cond_49

    .line 1160
    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    const-string v4, "Unsupported matte type: "

    .line 1164
    .line 1165
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    goto/16 :goto_20

    .line 1179
    .line 1180
    :cond_49
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v3

    .line 1184
    aget-object v32, v3, v1

    .line 1185
    .line 1186
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    .line 1187
    .line 1188
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->ordinal()I

    .line 1189
    .line 1190
    .line 1191
    move-result v3

    .line 1192
    aget v1, v1, v3

    .line 1193
    .line 1194
    const/4 v3, 0x1

    .line 1195
    if-eq v1, v3, :cond_4b

    .line 1196
    .line 1197
    const/4 v4, 0x2

    .line 1198
    if-eq v1, v4, :cond_4a

    .line 1199
    .line 1200
    goto :goto_1f

    .line 1201
    :cond_4a
    const-string v1, "Unsupported matte type: Luma Inverted"

    .line 1202
    .line 1203
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    goto :goto_1f

    .line 1207
    :cond_4b
    const-string v1, "Unsupported matte type: Luma"

    .line 1208
    .line 1209
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    :goto_1f
    iget v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1213
    .line 1214
    add-int/2addr v1, v3

    .line 1215
    iput v1, v7, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    .line 1216
    .line 1217
    goto/16 :goto_20

    .line 1218
    .line 1219
    :pswitch_e
    move v2, v6

    .line 1220
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v22

    .line 1224
    goto/16 :goto_20

    .line 1225
    .line 1226
    :pswitch_f
    move v2, v6

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1232
    .line 1233
    .line 1234
    move-result v25

    .line 1235
    goto :goto_20

    .line 1236
    :pswitch_10
    move v2, v6

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1238
    .line 1239
    .line 1240
    move-result v1

    .line 1241
    int-to-float v1, v1

    .line 1242
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    mul-float/2addr v3, v1

    .line 1247
    float-to-int v1, v3

    .line 1248
    move/from16 v24, v1

    .line 1249
    .line 1250
    goto :goto_20

    .line 1251
    :pswitch_11
    move v2, v6

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1253
    .line 1254
    .line 1255
    move-result v1

    .line 1256
    int-to-float v1, v1

    .line 1257
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 1258
    .line 1259
    .line 1260
    move-result v3

    .line 1261
    mul-float/2addr v3, v1

    .line 1262
    float-to-int v1, v3

    .line 1263
    move/from16 v23, v1

    .line 1264
    .line 1265
    goto :goto_20

    .line 1266
    :pswitch_12
    move v2, v6

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1268
    .line 1269
    .line 1270
    move-result v1

    .line 1271
    int-to-long v3, v1

    .line 1272
    move-wide/from16 v19, v3

    .line 1273
    .line 1274
    goto :goto_20

    .line 1275
    :pswitch_13
    move v2, v6

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1277
    .line 1278
    .line 1279
    move-result v1

    .line 1280
    sget-object v18, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1281
    .line 1282
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 1283
    .line 1284
    .line 1285
    move-result v3

    .line 1286
    if-ge v1, v3, :cond_4c

    .line 1287
    .line 1288
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    aget-object v18, v3, v1

    .line 1293
    .line 1294
    goto :goto_20

    .line 1295
    :pswitch_14
    move v2, v6

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v21

    .line 1300
    goto :goto_20

    .line 1301
    :pswitch_15
    move v2, v6

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 1303
    .line 1304
    .line 1305
    move-result v1

    .line 1306
    int-to-long v3, v1

    .line 1307
    move-wide/from16 v16, v3

    .line 1308
    .line 1309
    goto :goto_20

    .line 1310
    :pswitch_16
    move v2, v6

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v1

    .line 1315
    move-object v13, v1

    .line 1316
    :cond_4c
    :goto_20
    move v6, v2

    .line 1317
    const/4 v9, 0x0

    .line 1318
    goto/16 :goto_0

    .line 1319
    .line 1320
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 1321
    .line 1322
    .line 1323
    new-instance v15, Ljava/util/ArrayList;

    .line 1324
    .line 1325
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .line 1327
    .line 1328
    const/4 v0, 0x0

    .line 1329
    cmpl-float v1, v14, v0

    .line 1330
    .line 1331
    if-lez v1, :cond_4e

    .line 1332
    .line 1333
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 1334
    .line 1335
    const/4 v4, 0x0

    .line 1336
    const/4 v6, 0x0

    .line 1337
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v38

    .line 1341
    move-object v0, v9

    .line 1342
    move-object/from16 v1, p1

    .line 1343
    .line 1344
    move-object v2, v11

    .line 1345
    move-object v3, v11

    .line 1346
    move-object/from16 v47, v5

    .line 1347
    .line 1348
    move v5, v6

    .line 1349
    move-object/from16 v6, v38

    .line 1350
    .line 1351
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    goto :goto_21

    .line 1358
    :cond_4e
    move-object/from16 v47, v5

    .line 1359
    .line 1360
    :goto_21
    const/4 v0, 0x0

    .line 1361
    cmpl-float v0, v37, v0

    .line 1362
    .line 1363
    if-lez v0, :cond_4f

    .line 1364
    .line 1365
    goto :goto_22

    .line 1366
    :cond_4f
    iget v0, v7, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 1367
    .line 1368
    move/from16 v37, v0

    .line 1369
    .line 1370
    :goto_22
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 1371
    .line 1372
    const/16 v38, 0x0

    .line 1373
    .line 1374
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v6

    .line 1378
    const/4 v4, 0x0

    .line 1379
    move-object v0, v9

    .line 1380
    move-object/from16 v1, p1

    .line 1381
    .line 1382
    move-object v2, v12

    .line 1383
    move-object v3, v12

    .line 1384
    move v5, v14

    .line 1385
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 1392
    .line 1393
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1394
    .line 1395
    .line 1396
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v6

    .line 1400
    move-object v0, v9

    .line 1401
    move-object v2, v11

    .line 1402
    move-object v3, v11

    .line 1403
    move-object/from16 v4, v38

    .line 1404
    .line 1405
    move/from16 v5, v37

    .line 1406
    .line 1407
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    .line 1412
    .line 1413
    const-string v0, ".ai"

    .line 1414
    .line 1415
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v0

    .line 1419
    if-nez v0, :cond_50

    .line 1420
    .line 1421
    const-string v0, "ai"

    .line 1422
    .line 1423
    move-object/from16 v5, v47

    .line 1424
    .line 1425
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v0

    .line 1429
    if-eqz v0, :cond_51

    .line 1430
    .line 1431
    :cond_50
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 1432
    .line 1433
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 1434
    .line 1435
    .line 1436
    :cond_51
    new-instance v37, Lcom/airbnb/lottie/model/layer/Layer;

    .line 1437
    .line 1438
    move-object/from16 v0, v37

    .line 1439
    .line 1440
    move-object v1, v8

    .line 1441
    move-object/from16 v2, p1

    .line 1442
    .line 1443
    move-object v3, v13

    .line 1444
    move-wide/from16 v4, v16

    .line 1445
    .line 1446
    move-object/from16 v6, v18

    .line 1447
    .line 1448
    move-wide/from16 v7, v19

    .line 1449
    .line 1450
    move-object/from16 v9, v21

    .line 1451
    .line 1452
    move-object/from16 v11, v22

    .line 1453
    .line 1454
    move/from16 v12, v23

    .line 1455
    .line 1456
    move/from16 v13, v24

    .line 1457
    .line 1458
    move/from16 v14, v25

    .line 1459
    .line 1460
    move-object/from16 v21, v15

    .line 1461
    .line 1462
    move/from16 v15, v26

    .line 1463
    .line 1464
    move/from16 v16, v27

    .line 1465
    .line 1466
    move/from16 v17, v28

    .line 1467
    .line 1468
    move/from16 v18, v29

    .line 1469
    .line 1470
    move-object/from16 v19, v30

    .line 1471
    .line 1472
    move-object/from16 v20, v31

    .line 1473
    .line 1474
    move-object/from16 v22, v32

    .line 1475
    .line 1476
    move-object/from16 v23, v33

    .line 1477
    .line 1478
    move/from16 v24, v34

    .line 1479
    .line 1480
    move-object/from16 v25, v35

    .line 1481
    .line 1482
    move-object/from16 v26, v36

    .line 1483
    .line 1484
    invoke-direct/range {v0 .. v26}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    .line 1485
    .line 1486
    .line 1487
    return-object v37

    .line 1488
    nop

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch
.end method
