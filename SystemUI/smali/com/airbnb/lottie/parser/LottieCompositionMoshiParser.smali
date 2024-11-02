.class public final Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string/jumbo v0, "w"

    .line 2
    .line 3
    .line 4
    const-string v1, "h"

    .line 5
    .line 6
    const-string v2, "ip"

    .line 7
    .line 8
    const-string/jumbo v3, "op"

    .line 9
    .line 10
    .line 11
    const-string v4, "fr"

    .line 12
    .line 13
    const-string/jumbo v5, "v"

    .line 14
    .line 15
    .line 16
    const-string v6, "layers"

    .line 17
    .line 18
    const-string v7, "assets"

    .line 19
    .line 20
    const-string v8, "fonts"

    .line 21
    .line 22
    const-string v9, "chars"

    .line 23
    .line 24
    const-string/jumbo v10, "markers"

    .line 25
    .line 26
    .line 27
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 36
    .line 37
    const-string v1, "id"

    .line 38
    .line 39
    const-string v2, "layers"

    .line 40
    .line 41
    const-string/jumbo v3, "w"

    .line 42
    .line 43
    .line 44
    const-string v4, "h"

    .line 45
    .line 46
    const-string/jumbo v5, "p"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v6, "u"

    .line 50
    .line 51
    .line 52
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 61
    .line 62
    const-string v0, "list"

    .line 63
    .line 64
    filled-new-array {v0}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 73
    .line 74
    const-string/jumbo v0, "tm"

    .line 75
    .line 76
    .line 77
    const-string v1, "dr"

    .line 78
    .line 79
    const-string v2, "cm"

    .line 80
    .line 81
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 90
    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Landroidx/collection/LongSparseArray;

    .line 8
    .line 9
    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v5, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v7, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v8, Landroidx/collection/SparseArrayCompat;

    .line 38
    .line 39
    invoke-direct {v8}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v9, Lcom/airbnb/lottie/LottieComposition;

    .line 43
    .line 44
    invoke-direct {v9}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 48
    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    const/4 v15, 0x0

    .line 55
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    if-eqz v16, :cond_2b

    .line 60
    .line 61
    sget-object v11, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 62
    .line 63
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    move/from16 v17, v12

    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    packed-switch v11, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    move-object/from16 v21, v7

    .line 75
    .line 76
    move-object/from16 v23, v8

    .line 77
    .line 78
    move/from16 v20, v13

    .line 79
    .line 80
    move/from16 v22, v14

    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_18

    .line 89
    .line 90
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-eqz v11, :cond_4

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 100
    .line 101
    .line 102
    move-object/from16 v21, v19

    .line 103
    .line 104
    const/4 v11, 0x0

    .line 105
    const/16 v20, 0x0

    .line 106
    .line 107
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v18

    .line 111
    if-eqz v18, :cond_3

    .line 112
    .line 113
    sget-object v12, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 114
    .line 115
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_2

    .line 120
    .line 121
    move/from16 v22, v14

    .line 122
    .line 123
    const/4 v14, 0x1

    .line 124
    if-eq v12, v14, :cond_1

    .line 125
    .line 126
    const/4 v14, 0x2

    .line 127
    if-eq v12, v14, :cond_0

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_0
    move v14, v13

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 138
    .line 139
    .line 140
    move-result-wide v12

    .line 141
    double-to-float v12, v12

    .line 142
    move/from16 v20, v12

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_1
    move v14, v13

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 147
    .line 148
    .line 149
    move-result-wide v11

    .line 150
    double-to-float v11, v11

    .line 151
    :goto_3
    move v13, v14

    .line 152
    goto :goto_4

    .line 153
    :cond_2
    move/from16 v22, v14

    .line 154
    .line 155
    move v14, v13

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v21

    .line 160
    :goto_4
    move/from16 v14, v22

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    move/from16 v22, v14

    .line 164
    .line 165
    move v14, v13

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 167
    .line 168
    .line 169
    new-instance v12, Lcom/airbnb/lottie/model/Marker;

    .line 170
    .line 171
    move/from16 v13, v20

    .line 172
    .line 173
    move/from16 v20, v14

    .line 174
    .line 175
    move-object/from16 v14, v21

    .line 176
    .line 177
    invoke-direct {v12, v14, v11, v13}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move/from16 v13, v20

    .line 184
    .line 185
    move/from16 v14, v22

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    move/from16 v20, v13

    .line 189
    .line 190
    move/from16 v22, v14

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_9

    .line 196
    .line 197
    :pswitch_1
    move/from16 v20, v13

    .line 198
    .line 199
    move/from16 v22, v14

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 202
    .line 203
    .line 204
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    if-eqz v11, :cond_f

    .line 209
    .line 210
    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 211
    .line 212
    new-instance v11, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 218
    .line 219
    .line 220
    const-wide/16 v12, 0x0

    .line 221
    .line 222
    move-wide/from16 v26, v12

    .line 223
    .line 224
    move-wide/from16 v28, v26

    .line 225
    .line 226
    move-object/from16 v30, v19

    .line 227
    .line 228
    move-object/from16 v31, v30

    .line 229
    .line 230
    const/16 v25, 0x0

    .line 231
    .line 232
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-eqz v12, :cond_e

    .line 237
    .line 238
    sget-object v12, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 239
    .line 240
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-eqz v12, :cond_d

    .line 245
    .line 246
    const/4 v13, 0x1

    .line 247
    if-eq v12, v13, :cond_c

    .line 248
    .line 249
    const/4 v13, 0x2

    .line 250
    if-eq v12, v13, :cond_b

    .line 251
    .line 252
    const/4 v13, 0x3

    .line 253
    if-eq v12, v13, :cond_a

    .line 254
    .line 255
    const/4 v13, 0x4

    .line 256
    if-eq v12, v13, :cond_9

    .line 257
    .line 258
    const/4 v13, 0x5

    .line 259
    if-eq v12, v13, :cond_5

    .line 260
    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 269
    .line 270
    .line 271
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-eqz v12, :cond_8

    .line 276
    .line 277
    sget-object v12, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 278
    .line 279
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    if-eqz v12, :cond_6

    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 293
    .line 294
    .line 295
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    if-eqz v12, :cond_7

    .line 300
    .line 301
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    check-cast v12, Lcom/airbnb/lottie/model/content/ShapeGroup;

    .line 306
    .line 307
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 316
    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v31

    .line 323
    goto :goto_6

    .line 324
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v30

    .line 328
    goto :goto_6

    .line 329
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 330
    .line 331
    .line 332
    move-result-wide v28

    .line 333
    goto :goto_6

    .line 334
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 335
    .line 336
    .line 337
    move-result-wide v26

    .line 338
    goto :goto_6

    .line 339
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    const/4 v13, 0x0

    .line 344
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    .line 345
    .line 346
    .line 347
    move-result v25

    .line 348
    goto :goto_6

    .line 349
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 350
    .line 351
    .line 352
    new-instance v12, Lcom/airbnb/lottie/model/FontCharacter;

    .line 353
    .line 354
    move-object/from16 v23, v12

    .line 355
    .line 356
    move-object/from16 v24, v11

    .line 357
    .line 358
    invoke-direct/range {v23 .. v31}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    invoke-virtual {v8, v11, v12}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_5

    .line 369
    .line 370
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 371
    .line 372
    .line 373
    :goto_9
    move-object/from16 v21, v7

    .line 374
    .line 375
    move-object/from16 v23, v8

    .line 376
    .line 377
    goto/16 :goto_18

    .line 378
    .line 379
    :pswitch_2
    move/from16 v20, v13

    .line 380
    .line 381
    move/from16 v22, v14

    .line 382
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 384
    .line 385
    .line 386
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    if-eqz v11, :cond_17

    .line 391
    .line 392
    sget-object v11, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 393
    .line 394
    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    if-eqz v11, :cond_10

    .line 399
    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 404
    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 408
    .line 409
    .line 410
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    if-eqz v11, :cond_16

    .line 415
    .line 416
    sget-object v11, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 417
    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 419
    .line 420
    .line 421
    move-object/from16 v11, v19

    .line 422
    .line 423
    move-object v12, v11

    .line 424
    move-object v13, v12

    .line 425
    const/4 v14, 0x0

    .line 426
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v18

    .line 430
    if-eqz v18, :cond_15

    .line 431
    .line 432
    move-object/from16 v21, v7

    .line 433
    .line 434
    sget-object v7, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 435
    .line 436
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_14

    .line 441
    .line 442
    move-object/from16 v23, v8

    .line 443
    .line 444
    const/4 v8, 0x1

    .line 445
    if-eq v7, v8, :cond_13

    .line 446
    .line 447
    const/4 v8, 0x2

    .line 448
    if-eq v7, v8, :cond_12

    .line 449
    .line 450
    const/4 v8, 0x3

    .line 451
    if-eq v7, v8, :cond_11

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 454
    .line 455
    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 457
    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 461
    .line 462
    .line 463
    move-result-wide v7

    .line 464
    double-to-float v7, v7

    .line 465
    move v14, v7

    .line 466
    goto :goto_d

    .line 467
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    move-object v13, v7

    .line 472
    goto :goto_d

    .line 473
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    move-object v12, v7

    .line 478
    :goto_d
    move-object/from16 v7, v21

    .line 479
    .line 480
    move-object/from16 v8, v23

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_14
    move-object/from16 v23, v8

    .line 484
    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    move-object/from16 v7, v21

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_15
    move-object/from16 v21, v7

    .line 493
    .line 494
    move-object/from16 v23, v8

    .line 495
    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 497
    .line 498
    .line 499
    new-instance v7, Lcom/airbnb/lottie/model/Font;

    .line 500
    .line 501
    invoke-direct {v7, v11, v12, v13, v14}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 502
    .line 503
    .line 504
    iget-object v8, v7, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-object/from16 v7, v21

    .line 510
    .line 511
    move-object/from16 v8, v23

    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_16
    move-object/from16 v21, v7

    .line 515
    .line 516
    move-object/from16 v23, v8

    .line 517
    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_a

    .line 522
    .line 523
    :cond_17
    move-object/from16 v21, v7

    .line 524
    .line 525
    move-object/from16 v23, v8

    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_18

    .line 531
    .line 532
    :pswitch_3
    move-object/from16 v21, v7

    .line 533
    .line 534
    move-object/from16 v23, v8

    .line 535
    .line 536
    move/from16 v20, v13

    .line 537
    .line 538
    move/from16 v22, v14

    .line 539
    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 541
    .line 542
    .line 543
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-eqz v7, :cond_21

    .line 548
    .line 549
    new-instance v7, Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .line 553
    .line 554
    new-instance v8, Landroidx/collection/LongSparseArray;

    .line 555
    .line 556
    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    .line 560
    .line 561
    .line 562
    move-object/from16 v11, v19

    .line 563
    .line 564
    move-object/from16 v28, v11

    .line 565
    .line 566
    move-object/from16 v29, v28

    .line 567
    .line 568
    const/16 v25, 0x0

    .line 569
    .line 570
    const/16 v26, 0x0

    .line 571
    .line 572
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 573
    .line 574
    .line 575
    move-result v12

    .line 576
    if-eqz v12, :cond_1f

    .line 577
    .line 578
    sget-object v12, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 579
    .line 580
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 581
    .line 582
    .line 583
    move-result v12

    .line 584
    if-eqz v12, :cond_1e

    .line 585
    .line 586
    const/4 v13, 0x1

    .line 587
    if-eq v12, v13, :cond_1c

    .line 588
    .line 589
    const/4 v13, 0x2

    .line 590
    if-eq v12, v13, :cond_1b

    .line 591
    .line 592
    const/4 v13, 0x3

    .line 593
    if-eq v12, v13, :cond_1a

    .line 594
    .line 595
    const/4 v14, 0x4

    .line 596
    if-eq v12, v14, :cond_19

    .line 597
    .line 598
    const/4 v14, 0x5

    .line 599
    if-eq v12, v14, :cond_18

    .line 600
    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    .line 602
    .line 603
    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    .line 605
    .line 606
    .line 607
    goto :goto_f

    .line 608
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v29

    .line 612
    goto :goto_f

    .line 613
    :cond_19
    const/4 v14, 0x5

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v28

    .line 618
    goto :goto_f

    .line 619
    :cond_1a
    const/4 v14, 0x5

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 621
    .line 622
    .line 623
    move-result v26

    .line 624
    goto :goto_f

    .line 625
    :cond_1b
    const/4 v13, 0x3

    .line 626
    const/4 v14, 0x5

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 628
    .line 629
    .line 630
    move-result v25

    .line 631
    goto :goto_f

    .line 632
    :cond_1c
    const/4 v13, 0x3

    .line 633
    const/4 v14, 0x5

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 635
    .line 636
    .line 637
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 638
    .line 639
    .line 640
    move-result v12

    .line 641
    if-eqz v12, :cond_1d

    .line 642
    .line 643
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 644
    .line 645
    .line 646
    move-result-object v12

    .line 647
    iget-wide v13, v12, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 648
    .line 649
    invoke-virtual {v8, v13, v14, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    const/4 v13, 0x3

    .line 656
    const/4 v14, 0x5

    .line 657
    goto :goto_10

    .line 658
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 659
    .line 660
    .line 661
    goto :goto_f

    .line 662
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v11

    .line 666
    goto :goto_f

    .line 667
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    .line 668
    .line 669
    .line 670
    if-eqz v28, :cond_20

    .line 671
    .line 672
    new-instance v7, Lcom/airbnb/lottie/LottieImageAsset;

    .line 673
    .line 674
    move-object/from16 v24, v7

    .line 675
    .line 676
    move-object/from16 v27, v11

    .line 677
    .line 678
    invoke-direct/range {v24 .. v29}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    iget-object v8, v7, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    .line 682
    .line 683
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    goto/16 :goto_e

    .line 687
    .line 688
    :cond_20
    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    goto/16 :goto_e

    .line 692
    .line 693
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_18

    .line 697
    .line 698
    :pswitch_4
    move-object/from16 v21, v7

    .line 699
    .line 700
    move-object/from16 v23, v8

    .line 701
    .line 702
    move/from16 v20, v13

    .line 703
    .line 704
    move/from16 v22, v14

    .line 705
    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    .line 707
    .line 708
    .line 709
    const/4 v7, 0x0

    .line 710
    :cond_22
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    if-eqz v8, :cond_24

    .line 715
    .line 716
    invoke-static {v0, v9}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    sget-object v11, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 721
    .line 722
    iget-object v12, v8, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 723
    .line 724
    if-ne v12, v11, :cond_23

    .line 725
    .line 726
    add-int/lit8 v7, v7, 0x1

    .line 727
    .line 728
    :cond_23
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    iget-wide v11, v8, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 732
    .line 733
    invoke-virtual {v2, v11, v12, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    const/4 v8, 0x4

    .line 737
    if-le v7, v8, :cond_22

    .line 738
    .line 739
    new-instance v8, Ljava/lang/StringBuilder;

    .line 740
    .line 741
    const-string v11, "You have "

    .line 742
    .line 743
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    const-string v11, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    .line 750
    .line 751
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v8

    .line 758
    invoke-static {v8}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    goto :goto_11

    .line 762
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_18

    .line 766
    .line 767
    :pswitch_5
    move-object/from16 v21, v7

    .line 768
    .line 769
    move-object/from16 v23, v8

    .line 770
    .line 771
    move/from16 v20, v13

    .line 772
    .line 773
    move/from16 v22, v14

    .line 774
    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v7

    .line 779
    const-string v8, "\\."

    .line 780
    .line 781
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v7

    .line 785
    const/4 v8, 0x0

    .line 786
    aget-object v11, v7, v8

    .line 787
    .line 788
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    move-result v8

    .line 792
    const/4 v11, 0x1

    .line 793
    aget-object v12, v7, v11

    .line 794
    .line 795
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move-result v12

    .line 799
    const/4 v13, 0x2

    .line 800
    aget-object v7, v7, v13

    .line 801
    .line 802
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    move-result v7

    .line 806
    const/4 v13, 0x4

    .line 807
    if-ge v8, v13, :cond_25

    .line 808
    .line 809
    goto :goto_13

    .line 810
    :cond_25
    if-le v8, v13, :cond_26

    .line 811
    .line 812
    goto :goto_12

    .line 813
    :cond_26
    if-ge v12, v13, :cond_27

    .line 814
    .line 815
    goto :goto_13

    .line 816
    :cond_27
    if-le v12, v13, :cond_28

    .line 817
    .line 818
    goto :goto_12

    .line 819
    :cond_28
    if-ltz v7, :cond_29

    .line 820
    .line 821
    :goto_12
    move v12, v11

    .line 822
    goto :goto_14

    .line 823
    :cond_29
    :goto_13
    const/4 v12, 0x0

    .line 824
    :goto_14
    if-nez v12, :cond_2a

    .line 825
    .line 826
    const-string v7, "Lottie only supports bodymovin >= 4.4.0"

    .line 827
    .line 828
    invoke-virtual {v9, v7}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    goto :goto_18

    .line 832
    :pswitch_6
    move-object/from16 v21, v7

    .line 833
    .line 834
    move-object/from16 v23, v8

    .line 835
    .line 836
    move/from16 v20, v13

    .line 837
    .line 838
    move/from16 v22, v14

    .line 839
    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 841
    .line 842
    .line 843
    move-result-wide v7

    .line 844
    double-to-float v12, v7

    .line 845
    goto :goto_19

    .line 846
    :pswitch_7
    move-object/from16 v21, v7

    .line 847
    .line 848
    move-object/from16 v23, v8

    .line 849
    .line 850
    move/from16 v20, v13

    .line 851
    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 853
    .line 854
    .line 855
    move-result-wide v7

    .line 856
    double-to-float v7, v7

    .line 857
    const v8, 0x3c23d70a    # 0.01f

    .line 858
    .line 859
    .line 860
    sub-float v14, v7, v8

    .line 861
    .line 862
    goto :goto_15

    .line 863
    :pswitch_8
    move-object/from16 v21, v7

    .line 864
    .line 865
    move-object/from16 v23, v8

    .line 866
    .line 867
    move/from16 v22, v14

    .line 868
    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    .line 870
    .line 871
    .line 872
    move-result-wide v7

    .line 873
    double-to-float v13, v7

    .line 874
    :goto_15
    move/from16 v12, v17

    .line 875
    .line 876
    goto :goto_19

    .line 877
    :pswitch_9
    move-object/from16 v21, v7

    .line 878
    .line 879
    move-object/from16 v23, v8

    .line 880
    .line 881
    move/from16 v20, v13

    .line 882
    .line 883
    move/from16 v22, v14

    .line 884
    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 886
    .line 887
    .line 888
    move-result v10

    .line 889
    goto :goto_16

    .line 890
    :pswitch_a
    move-object/from16 v21, v7

    .line 891
    .line 892
    move-object/from16 v23, v8

    .line 893
    .line 894
    move/from16 v20, v13

    .line 895
    .line 896
    move/from16 v22, v14

    .line 897
    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    .line 899
    .line 900
    .line 901
    move-result v15

    .line 902
    :goto_16
    move/from16 v12, v17

    .line 903
    .line 904
    move/from16 v13, v20

    .line 905
    .line 906
    move-object/from16 v7, v21

    .line 907
    .line 908
    move/from16 v14, v22

    .line 909
    .line 910
    :goto_17
    move-object/from16 v8, v23

    .line 911
    .line 912
    goto/16 :goto_0

    .line 913
    .line 914
    :cond_2a
    :goto_18
    move/from16 v12, v17

    .line 915
    .line 916
    move/from16 v13, v20

    .line 917
    .line 918
    move/from16 v14, v22

    .line 919
    .line 920
    :goto_19
    move-object/from16 v7, v21

    .line 921
    .line 922
    goto :goto_17

    .line 923
    :cond_2b
    move-object/from16 v23, v8

    .line 924
    .line 925
    move/from16 v17, v12

    .line 926
    .line 927
    move/from16 v20, v13

    .line 928
    .line 929
    move/from16 v22, v14

    .line 930
    .line 931
    int-to-float v0, v15

    .line 932
    mul-float/2addr v0, v1

    .line 933
    float-to-int v0, v0

    .line 934
    int-to-float v7, v10

    .line 935
    mul-float/2addr v7, v1

    .line 936
    float-to-int v1, v7

    .line 937
    new-instance v7, Landroid/graphics/Rect;

    .line 938
    .line 939
    const/4 v8, 0x0

    .line 940
    invoke-direct {v7, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 941
    .line 942
    .line 943
    iput-object v7, v9, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 944
    .line 945
    move/from16 v10, v20

    .line 946
    .line 947
    iput v10, v9, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 948
    .line 949
    move/from16 v10, v22

    .line 950
    .line 951
    iput v10, v9, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 952
    .line 953
    move/from16 v10, v17

    .line 954
    .line 955
    iput v10, v9, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 956
    .line 957
    iput-object v3, v9, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 958
    .line 959
    iput-object v2, v9, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 960
    .line 961
    iput-object v4, v9, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 962
    .line 963
    iput-object v5, v9, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 964
    .line 965
    move-object/from16 v0, v23

    .line 966
    .line 967
    iput-object v0, v9, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 968
    .line 969
    iput-object v6, v9, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 970
    .line 971
    return-object v9

    .line 972
    nop

    .line 973
    :pswitch_data_0
    .packed-switch 0x0
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
.end method
