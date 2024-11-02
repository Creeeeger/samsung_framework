.class public final Lcom/android/systemui/animation/FontInterpolator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

.field public static final DEBUG:Z

.field public static final EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;


# instance fields
.field public final interpCache:Landroid/util/LruCache;

.field public final tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

.field public final tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

.field public final verFontCache:Landroid/util/LruCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/animation/FontInterpolator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/animation/FontInterpolator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    .line 8
    .line 9
    const-string v0, "FontInterpolator"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput-boolean v0, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    .line 20
    .line 21
    sput-object v0, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/animation/FontInterpolator;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 4
    :goto_0
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    .line 5
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    .line 6
    new-instance p1, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator;->tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 7
    new-instance p1, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(IILjava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/animation/FontInterpolator;->tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/FontInterpolator;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    cmpg-float v4, v3, v4

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    move v4, v6

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-eqz v4, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpg-float v4, v3, v4

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    move v4, v6

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v4, 0x0

    .line 30
    :goto_1
    if-eqz v4, :cond_3

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget-object v7, Lcom/android/systemui/animation/FontInterpolator;->EMPTY_AXES:[Landroid/graphics/fonts/FontVariationAxis;

    .line 38
    .line 39
    if-nez v4, :cond_4

    .line 40
    .line 41
    move-object v4, v7

    .line 42
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    if-nez v8, :cond_5

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    move-object v7, v8

    .line 50
    :goto_2
    array-length v8, v4

    .line 51
    if-nez v8, :cond_6

    .line 52
    .line 53
    move v8, v6

    .line 54
    goto :goto_3

    .line 55
    :cond_6
    const/4 v8, 0x0

    .line 56
    :goto_3
    if-eqz v8, :cond_8

    .line 57
    .line 58
    array-length v8, v7

    .line 59
    if-nez v8, :cond_7

    .line 60
    .line 61
    move v8, v6

    .line 62
    goto :goto_4

    .line 63
    :cond_7
    const/4 v8, 0x0

    .line 64
    :goto_4
    if-eqz v8, :cond_8

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_8
    iget-object v8, v0, Lcom/android/systemui/animation/FontInterpolator;->tmpInterpKey:Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 68
    .line 69
    iput-object v1, v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    .line 70
    .line 71
    iput-object v2, v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    .line 72
    .line 73
    iput v3, v8, Lcom/android/systemui/animation/FontInterpolator$InterpKey;->progress:F

    .line 74
    .line 75
    iget-object v9, v0, Lcom/android/systemui/animation/FontInterpolator;->interpCache:Landroid/util/LruCache;

    .line 76
    .line 77
    invoke-virtual {v9, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    check-cast v10, Landroid/graphics/fonts/Font;

    .line 82
    .line 83
    sget-boolean v11, Lcom/android/systemui/animation/FontInterpolator;->DEBUG:Z

    .line 84
    .line 85
    const-string v12, "["

    .line 86
    .line 87
    const-string v13, "FontInterpolator"

    .line 88
    .line 89
    if-eqz v10, :cond_a

    .line 90
    .line 91
    if-eqz v11, :cond_9

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, "] Interp. cache hit for "

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_9
    return-object v10

    .line 117
    :cond_a
    new-instance v10, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;

    .line 118
    .line 119
    invoke-direct {v10, v3, v0}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;-><init>(FLcom/android/systemui/animation/FontInterpolator;)V

    .line 120
    .line 121
    .line 122
    array-length v14, v4

    .line 123
    if-le v14, v6, :cond_b

    .line 124
    .line 125
    new-instance v14, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;

    .line 126
    .line 127
    invoke-direct {v14}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;-><init>()V

    .line 128
    .line 129
    .line 130
    array-length v15, v4

    .line 131
    if-le v15, v6, :cond_b

    .line 132
    .line 133
    invoke-static {v4, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 134
    .line 135
    .line 136
    :cond_b
    array-length v14, v7

    .line 137
    if-le v14, v6, :cond_c

    .line 138
    .line 139
    new-instance v14, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$2;

    .line 140
    .line 141
    invoke-direct {v14}, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$2;-><init>()V

    .line 142
    .line 143
    .line 144
    array-length v15, v7

    .line 145
    if-le v15, v6, :cond_c

    .line 146
    .line 147
    invoke-static {v7, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 148
    .line 149
    .line 150
    :cond_c
    new-instance v14, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    const/4 v15, 0x0

    .line 157
    :goto_5
    array-length v6, v4

    .line 158
    if-lt v15, v6, :cond_11

    .line 159
    .line 160
    array-length v6, v7

    .line 161
    if-ge v5, v6, :cond_d

    .line 162
    .line 163
    goto/16 :goto_6

    .line 164
    .line 165
    :cond_d
    iget-object v4, v0, Lcom/android/systemui/animation/FontInterpolator;->tmpVarFontKey:Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    iput v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sourceId:I

    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    iput v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->index:I

    .line 181
    .line 182
    iget-object v5, v4, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;->sortedAxes:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 185
    .line 186
    .line 187
    invoke-interface {v5, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    .line 189
    .line 190
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    const/4 v7, 0x1

    .line 195
    if-le v6, v7, :cond_e

    .line 196
    .line 197
    new-instance v6, Lcom/android/systemui/animation/FontInterpolator$VarFontKey$set$$inlined$sortBy$1;

    .line 198
    .line 199
    invoke-direct {v6}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey$set$$inlined$sortBy$1;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    .line 204
    .line 205
    :cond_e
    iget-object v0, v0, Lcom/android/systemui/animation/FontInterpolator;->verFontCache:Landroid/util/LruCache;

    .line 206
    .line 207
    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Landroid/graphics/fonts/Font;

    .line 212
    .line 213
    if-eqz v5, :cond_10

    .line 214
    .line 215
    new-instance v0, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 216
    .line 217
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v0, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    if-eqz v11, :cond_f

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, "] Axis cache hit for "

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_f
    return-object v5

    .line 249
    :cond_10
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    .line 250
    .line 251
    invoke-direct {v5, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 252
    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    new-array v6, v6, [Landroid/graphics/fonts/FontVariationAxis;

    .line 256
    .line 257
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, [Landroid/graphics/fonts/FontVariationAxis;

    .line 262
    .line 263
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    new-instance v6, Lcom/android/systemui/animation/FontInterpolator$InterpKey;

    .line 272
    .line 273
    invoke-direct {v6, v1, v2, v3}, Lcom/android/systemui/animation/FontInterpolator$InterpKey;-><init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v6, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    new-instance v2, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;

    .line 280
    .line 281
    invoke-direct {v2, v1, v14}, Lcom/android/systemui/animation/FontInterpolator$VarFontKey;-><init>(Landroid/graphics/fonts/Font;Ljava/util/List;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v1, "] Cache MISS for "

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v1, " / "

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    return-object v5

    .line 319
    :cond_11
    const/4 v6, 0x0

    .line 320
    :goto_6
    const/16 v16, 0x1

    .line 321
    .line 322
    array-length v6, v4

    .line 323
    if-ge v15, v6, :cond_12

    .line 324
    .line 325
    aget-object v6, v4, v15

    .line 326
    .line 327
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    goto :goto_7

    .line 332
    :cond_12
    const/4 v6, 0x0

    .line 333
    :goto_7
    array-length v0, v7

    .line 334
    if-ge v5, v0, :cond_13

    .line 335
    .line 336
    aget-object v0, v7, v5

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    goto :goto_8

    .line 343
    :cond_13
    const/4 v0, 0x0

    .line 344
    :goto_8
    if-nez v6, :cond_14

    .line 345
    .line 346
    move/from16 v18, v16

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_14
    if-nez v0, :cond_15

    .line 350
    .line 351
    const/16 v18, -0x1

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_15
    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v18

    .line 358
    :goto_9
    if-nez v18, :cond_16

    .line 359
    .line 360
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    add-int/lit8 v0, v15, 0x1

    .line 364
    .line 365
    aget-object v15, v4, v15

    .line 366
    .line 367
    invoke-virtual {v15}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 368
    .line 369
    .line 370
    move-result v15

    .line 371
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 372
    .line 373
    .line 374
    move-result-object v15

    .line 375
    add-int/lit8 v17, v5, 0x1

    .line 376
    .line 377
    aget-object v5, v7, v5

    .line 378
    .line 379
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v10, v6, v15, v5}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    check-cast v5, Ljava/lang/Number;

    .line 392
    .line 393
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    new-instance v15, Landroid/graphics/fonts/FontVariationAxis;

    .line 398
    .line 399
    invoke-direct {v15, v6, v5}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 400
    .line 401
    .line 402
    move/from16 v5, v17

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_16
    if-gez v18, :cond_17

    .line 406
    .line 407
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    add-int/lit8 v0, v15, 0x1

    .line 411
    .line 412
    aget-object v15, v4, v15

    .line 413
    .line 414
    invoke-virtual {v15}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 415
    .line 416
    .line 417
    move-result v15

    .line 418
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    move/from16 v18, v0

    .line 423
    .line 424
    const/4 v0, 0x0

    .line 425
    invoke-virtual {v10, v6, v15, v0}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    check-cast v0, Ljava/lang/Number;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    new-instance v15, Landroid/graphics/fonts/FontVariationAxis;

    .line 436
    .line 437
    invoke-direct {v15, v6, v0}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 438
    .line 439
    .line 440
    move/from16 v0, v18

    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    add-int/lit8 v6, v5, 0x1

    .line 447
    .line 448
    aget-object v5, v7, v5

    .line 449
    .line 450
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    const/4 v1, 0x0

    .line 459
    invoke-virtual {v10, v0, v1, v5}, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Ljava/lang/Number;

    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    new-instance v5, Landroid/graphics/fonts/FontVariationAxis;

    .line 470
    .line 471
    invoke-direct {v5, v0, v1}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    .line 472
    .line 473
    .line 474
    move v0, v15

    .line 475
    move-object v15, v5

    .line 476
    move v5, v6

    .line 477
    :goto_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-object/from16 v1, p1

    .line 481
    .line 482
    move v15, v0

    .line 483
    move-object/from16 v0, p0

    .line 484
    .line 485
    goto/16 :goto_5
.end method
