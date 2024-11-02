.class public final Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    const-string/jumbo v1, "p"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "s"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "rz"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "r"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "o"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v6, "so"

    .line 19
    .line 20
    .line 21
    const-string v7, "eo"

    .line 22
    .line 23
    const-string/jumbo v8, "sk"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v9, "sa"

    .line 27
    .line 28
    .line 29
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

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
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 38
    .line 39
    const-string v0, "k"

    .line 40
    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 50
    .line 51
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

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v11, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v11, v10

    .line 17
    :goto_0
    if-eqz v11, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v21, 0x0

    .line 29
    .line 30
    const/16 v22, 0x0

    .line 31
    .line 32
    const/16 v23, 0x0

    .line 33
    .line 34
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_6

    .line 42
    .line 43
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    packed-switch v2, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    move-object/from16 v26, v6

    .line 53
    .line 54
    move-object/from16 v27, v7

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_0
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    goto :goto_1

    .line 68
    :pswitch_1
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 74
    .line 75
    .line 76
    move-result-object v23

    .line 77
    goto :goto_1

    .line 78
    :pswitch_3
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 79
    .line 80
    .line 81
    move-result-object v22

    .line 82
    goto :goto_1

    .line 83
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 84
    .line 85
    .line 86
    move-result-object v21

    .line 87
    goto :goto_1

    .line 88
    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 89
    .line 90
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :pswitch_6
    invoke-static {v0, v8, v10}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget-object v3, v5, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    new-instance v2, Lcom/airbnb/lottie/value/Keyframe;

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v16

    .line 111
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const/16 v17, 0x0

    .line 116
    .line 117
    const/16 v18, 0x0

    .line 118
    .line 119
    iget v1, v8, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v19

    .line 125
    move-object v1, v2

    .line 126
    move-object v9, v2

    .line 127
    move-object/from16 v2, p1

    .line 128
    .line 129
    move-object v12, v3

    .line 130
    move-object/from16 v3, v16

    .line 131
    .line 132
    move-object/from16 v16, v5

    .line 133
    .line 134
    move-object/from16 v5, v17

    .line 135
    .line 136
    move-object/from16 v26, v6

    .line 137
    .line 138
    move/from16 v6, v18

    .line 139
    .line 140
    move-object/from16 v27, v7

    .line 141
    .line 142
    move-object/from16 v7, v19

    .line 143
    .line 144
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    move-object v12, v3

    .line 152
    move-object/from16 v16, v5

    .line 153
    .line 154
    move-object/from16 v26, v6

    .line 155
    .line 156
    move-object/from16 v27, v7

    .line 157
    .line 158
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 165
    .line 166
    if-nez v1, :cond_3

    .line 167
    .line 168
    new-instance v9, Lcom/airbnb/lottie/value/Keyframe;

    .line 169
    .line 170
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/4 v5, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    iget v1, v8, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 181
    .line 182
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    move-object v1, v9

    .line 187
    move-object/from16 v2, p1

    .line 188
    .line 189
    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v12, v10, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_3
    :goto_2
    move-object/from16 v1, v16

    .line 196
    .line 197
    :goto_3
    move-object/from16 v6, v26

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :pswitch_7
    move-object/from16 v27, v7

    .line 201
    .line 202
    new-instance v6, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 203
    .line 204
    sget-object v2, Lcom/airbnb/lottie/parser/ScaleXYParser;->INSTANCE:Lcom/airbnb/lottie/parser/ScaleXYParser;

    .line 205
    .line 206
    invoke-static {v0, v8, v3, v2, v10}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-direct {v6, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :pswitch_8
    move-object/from16 v26, v6

    .line 215
    .line 216
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :pswitch_9
    move-object/from16 v26, v6

    .line 223
    .line 224
    move-object/from16 v27, v7

    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 227
    .line 228
    .line 229
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_5

    .line 234
    .line 235
    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_4

    .line 242
    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    goto :goto_4

    .line 255
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :goto_5
    move-object/from16 v7, v27

    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_6
    move-object/from16 v26, v6

    .line 264
    .line 265
    move-object/from16 v27, v7

    .line 266
    .line 267
    if-eqz v11, :cond_7

    .line 268
    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 270
    .line 271
    .line 272
    :cond_7
    if-eqz v15, :cond_9

    .line 273
    .line 274
    invoke-virtual {v15}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->isStatic()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_8

    .line 279
    .line 280
    iget-object v0, v15, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v0, Landroid/graphics/PointF;

    .line 291
    .line 292
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_8

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_8
    move v0, v10

    .line 300
    goto :goto_7

    .line 301
    :cond_9
    :goto_6
    const/4 v0, 0x1

    .line 302
    :goto_7
    if-eqz v0, :cond_a

    .line 303
    .line 304
    move-object/from16 v7, v27

    .line 305
    .line 306
    const/16 v17, 0x0

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_a
    move-object/from16 v17, v15

    .line 310
    .line 311
    move-object/from16 v7, v27

    .line 312
    .line 313
    :goto_8
    if-eqz v7, :cond_c

    .line 314
    .line 315
    instance-of v0, v7, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    .line 316
    .line 317
    if-nez v0, :cond_b

    .line 318
    .line 319
    invoke-interface {v7}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_b

    .line 324
    .line 325
    invoke-interface {v7}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 334
    .line 335
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v0, Landroid/graphics/PointF;

    .line 338
    .line 339
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_b

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_b
    move v0, v10

    .line 347
    goto :goto_a

    .line 348
    :cond_c
    :goto_9
    const/4 v0, 0x1

    .line 349
    :goto_a
    if-eqz v0, :cond_d

    .line 350
    .line 351
    const/16 v18, 0x0

    .line 352
    .line 353
    goto :goto_b

    .line 354
    :cond_d
    move-object/from16 v18, v7

    .line 355
    .line 356
    :goto_b
    if-eqz v1, :cond_f

    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_e

    .line 363
    .line 364
    iget-object v0, v1, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 371
    .line 372
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Ljava/lang/Float;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    cmpl-float v0, v0, v4

    .line 381
    .line 382
    if-nez v0, :cond_e

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_e
    move v0, v10

    .line 386
    goto :goto_d

    .line 387
    :cond_f
    :goto_c
    const/4 v0, 0x1

    .line 388
    :goto_d
    move-object/from16 v6, v26

    .line 389
    .line 390
    if-eqz v0, :cond_10

    .line 391
    .line 392
    const/4 v1, 0x0

    .line 393
    :cond_10
    if-eqz v6, :cond_13

    .line 394
    .line 395
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_12

    .line 400
    .line 401
    iget-object v0, v6, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 402
    .line 403
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 408
    .line 409
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 412
    .line 413
    iget v2, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 414
    .line 415
    cmpl-float v2, v2, v3

    .line 416
    .line 417
    if-nez v2, :cond_11

    .line 418
    .line 419
    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    .line 420
    .line 421
    cmpl-float v0, v0, v3

    .line 422
    .line 423
    if-nez v0, :cond_11

    .line 424
    .line 425
    const/4 v0, 0x1

    .line 426
    goto :goto_e

    .line 427
    :cond_11
    move v0, v10

    .line 428
    :goto_e
    if-eqz v0, :cond_12

    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_12
    move v0, v10

    .line 432
    goto :goto_10

    .line 433
    :cond_13
    :goto_f
    const/4 v0, 0x1

    .line 434
    :goto_10
    if-eqz v0, :cond_14

    .line 435
    .line 436
    const/16 v19, 0x0

    .line 437
    .line 438
    goto :goto_11

    .line 439
    :cond_14
    move-object/from16 v19, v6

    .line 440
    .line 441
    :goto_11
    if-eqz v14, :cond_16

    .line 442
    .line 443
    invoke-virtual {v14}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_15

    .line 448
    .line 449
    iget-object v0, v14, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 450
    .line 451
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 456
    .line 457
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v0, Ljava/lang/Float;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    cmpl-float v0, v0, v4

    .line 466
    .line 467
    if-nez v0, :cond_15

    .line 468
    .line 469
    goto :goto_12

    .line 470
    :cond_15
    move v0, v10

    .line 471
    goto :goto_13

    .line 472
    :cond_16
    :goto_12
    const/4 v0, 0x1

    .line 473
    :goto_13
    if-eqz v0, :cond_17

    .line 474
    .line 475
    const/4 v14, 0x0

    .line 476
    :cond_17
    if-eqz v13, :cond_19

    .line 477
    .line 478
    invoke-virtual {v13}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->isStatic()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_18

    .line 483
    .line 484
    iget-object v0, v13, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 485
    .line 486
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    .line 491
    .line 492
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Ljava/lang/Float;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    cmpl-float v0, v0, v4

    .line 501
    .line 502
    if-nez v0, :cond_18

    .line 503
    .line 504
    goto :goto_14

    .line 505
    :cond_18
    move v9, v10

    .line 506
    goto :goto_15

    .line 507
    :cond_19
    :goto_14
    const/4 v9, 0x1

    .line 508
    :goto_15
    if-eqz v9, :cond_1a

    .line 509
    .line 510
    const/16 v25, 0x0

    .line 511
    .line 512
    goto :goto_16

    .line 513
    :cond_1a
    move-object/from16 v25, v13

    .line 514
    .line 515
    :goto_16
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 516
    .line 517
    move-object/from16 v16, v0

    .line 518
    .line 519
    move-object/from16 v20, v1

    .line 520
    .line 521
    move-object/from16 v24, v14

    .line 522
    .line 523
    invoke-direct/range {v16 .. v25}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    .line 524
    .line 525
    .line 526
    return-object v0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
