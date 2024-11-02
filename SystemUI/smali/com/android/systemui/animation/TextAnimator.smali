.class public final Lcom/android/systemui/animation/TextAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

.field public final invalidateCallback:Lkotlin/jvm/functions/Function0;

.field public final textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

.field public final typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;


# direct methods
.method public constructor <init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    .line 3
    new-instance p3, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;-><init>(Landroid/graphics/Typeface;)V

    iput-object p3, p0, Lcom/android/systemui/animation/TextAnimator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    .line 4
    new-instance v0, Lcom/android/systemui/animation/TextInterpolator;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/systemui/animation/TextInterpolator;-><init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, p3

    .line 5
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance p3, Lcom/android/systemui/animation/TextAnimator$animator$1$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/animation/TextAnimator$animator$1$1;-><init>(Lcom/android/systemui/animation/TextAnimator;Ljava/lang/Integer;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance p2, Lcom/android/systemui/animation/TextAnimator$animator$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/TextAnimator$animator$1$2;-><init>(Lcom/android/systemui/animation/TextAnimator;)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 11
    new-instance p1, Lcom/android/systemui/animation/FontVariationUtils;

    invoke-direct {p1}, Lcom/android/systemui/animation/FontVariationUtils;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator;->fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/TextAnimator;-><init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    move-object/from16 v4, p10

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/systemui/animation/TextAnimator;->fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    iput-boolean v6, v5, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    iget v8, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 20
    .line 21
    if-eq v8, v1, :cond_0

    .line 22
    .line 23
    iput-boolean v7, v5, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    .line 24
    .line 25
    iput v1, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 26
    .line 27
    :cond_0
    iget v1, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 28
    .line 29
    const-string v8, ""

    .line 30
    .line 31
    if-ltz v1, :cond_1

    .line 32
    .line 33
    const-string v9, "\'wght\' "

    .line 34
    .line 35
    invoke-static {v9, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v1, v8

    .line 41
    :goto_0
    iget v9, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    .line 42
    .line 43
    const-string v10, ", "

    .line 44
    .line 45
    if-ltz v9, :cond_3

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    move-object v9, v8

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v9, v10

    .line 56
    :goto_1
    iget v11, v5, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    .line 57
    .line 58
    new-instance v12, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "\'wdth\' "

    .line 70
    .line 71
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_3
    iget v9, v5, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    .line 82
    .line 83
    if-ltz v9, :cond_5

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_4

    .line 90
    .line 91
    move-object v9, v8

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move-object v9, v10

    .line 94
    :goto_2
    iget v11, v5, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    .line 95
    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, "\'opsz\' "

    .line 108
    .line 109
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :cond_5
    iget v9, v5, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    .line 120
    .line 121
    if-ltz v9, :cond_7

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_6

    .line 128
    .line 129
    move-object v9, v8

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    move-object v9, v10

    .line 132
    :goto_3
    iget v11, v5, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    .line 133
    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "\'ROND\' "

    .line 146
    .line 147
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :cond_7
    iget-boolean v5, v5, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    .line 158
    .line 159
    if-eqz v5, :cond_8

    .line 160
    .line 161
    move-object v8, v1

    .line 162
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    iget-object v5, v0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 165
    .line 166
    if-eqz p4, :cond_9

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/android/systemui/animation/TextInterpolator;->rebase()V

    .line 172
    .line 173
    .line 174
    :cond_9
    const/4 v9, 0x0

    .line 175
    cmpl-float v9, v2, v9

    .line 176
    .line 177
    if-ltz v9, :cond_a

    .line 178
    .line 179
    iget-object v9, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 180
    .line 181
    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 182
    .line 183
    .line 184
    :cond_a
    if-eqz v8, :cond_c

    .line 185
    .line 186
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_b

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_b
    move v2, v6

    .line 194
    goto :goto_5

    .line 195
    :cond_c
    :goto_4
    move v2, v7

    .line 196
    :goto_5
    if-nez v2, :cond_d

    .line 197
    .line 198
    iget-object v2, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 199
    .line 200
    iget-object v9, v0, Lcom/android/systemui/animation/TextAnimator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    .line 201
    .line 202
    invoke-virtual {v9, v8}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->getTypefaceForVariant(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 207
    .line 208
    .line 209
    :cond_d
    if-eqz p3, :cond_e

    .line 210
    .line 211
    iget-object v2, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 212
    .line 213
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 218
    .line 219
    .line 220
    :cond_e
    iget-object v2, v5, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 221
    .line 222
    iget-object v8, v5, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 223
    .line 224
    invoke-static {v2, v8}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    move-object v8, v2

    .line 229
    check-cast v8, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    iget-object v11, v5, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 236
    .line 237
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-ne v9, v11, :cond_f

    .line 242
    .line 243
    move v6, v7

    .line 244
    :cond_f
    if-eqz v6, :cond_20

    .line 245
    .line 246
    iget-object v6, v5, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    .line 257
    .line 258
    const/16 v11, 0xa

    .line 259
    .line 260
    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .line 274
    .line 275
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_1b

    .line 280
    .line 281
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_1b

    .line 286
    .line 287
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    check-cast v6, Ljava/util/List;

    .line 296
    .line 297
    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Line;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    new-instance v14, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    .line 325
    .line 326
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_1a

    .line 331
    .line 332
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v2, :cond_1a

    .line 337
    .line 338
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    check-cast v6, Landroid/graphics/text/PositionedGlyphs;

    .line 347
    .line 348
    check-cast v2, Lcom/android/systemui/animation/TextInterpolator$Run;

    .line 349
    .line 350
    invoke-virtual {v6}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    iget-object v15, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 355
    .line 356
    array-length v15, v15

    .line 357
    if-ne v11, v15, :cond_10

    .line 358
    .line 359
    const/4 v11, 0x1

    .line 360
    goto :goto_8

    .line 361
    :cond_10
    const/4 v11, 0x0

    .line 362
    :goto_8
    if-eqz v11, :cond_19

    .line 363
    .line 364
    iget-object v11, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v15

    .line 374
    if-eqz v15, :cond_17

    .line 375
    .line 376
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v15

    .line 380
    check-cast v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    .line 381
    .line 382
    move-object/from16 p1, v7

    .line 383
    .line 384
    iget v7, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    .line 385
    .line 386
    invoke-virtual {v6, v7}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    move-object/from16 p2, v8

    .line 391
    .line 392
    iget v8, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->start:I

    .line 393
    .line 394
    move-object/from16 p3, v11

    .line 395
    .line 396
    move-object/from16 v16, v12

    .line 397
    .line 398
    move v11, v8

    .line 399
    :goto_a
    iget v12, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->end:I

    .line 400
    .line 401
    if-ge v11, v12, :cond_15

    .line 402
    .line 403
    invoke-virtual {v6, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    .line 404
    .line 405
    .line 406
    move-result v12

    .line 407
    move-object/from16 v17, v13

    .line 408
    .line 409
    iget-object v13, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->glyphIds:[I

    .line 410
    .line 411
    aget v13, v13, v8

    .line 412
    .line 413
    if-ne v12, v13, :cond_11

    .line 414
    .line 415
    const/4 v12, 0x1

    .line 416
    goto :goto_b

    .line 417
    :cond_11
    const/4 v12, 0x0

    .line 418
    :goto_b
    if-eqz v12, :cond_14

    .line 419
    .line 420
    invoke-virtual {v6, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 421
    .line 422
    .line 423
    move-result-object v12

    .line 424
    if-ne v7, v12, :cond_12

    .line 425
    .line 426
    const/4 v12, 0x1

    .line 427
    goto :goto_c

    .line 428
    :cond_12
    const/4 v12, 0x0

    .line 429
    :goto_c
    if-eqz v12, :cond_13

    .line 430
    .line 431
    add-int/lit8 v11, v11, 0x1

    .line 432
    .line 433
    move-object/from16 v13, v17

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_13
    invoke-virtual {v6, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v2, "The new layout has different font run. "

    .line 443
    .line 444
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v2, " vs "

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v0, " at "

    .line 459
    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v1

    .line 480
    :cond_14
    const-string v0, "The new layout has different glyph ID at "

    .line 481
    .line 482
    invoke-static {v0, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw v1

    .line 496
    :cond_15
    move-object/from16 v17, v13

    .line 497
    .line 498
    sget-object v8, Lcom/android/systemui/animation/FontInterpolator;->Companion:Lcom/android/systemui/animation/FontInterpolator$Companion;

    .line 499
    .line 500
    iget-object v11, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 501
    .line 502
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-static {v7, v11}, Lcom/android/systemui/animation/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    if-eqz v8, :cond_16

    .line 510
    .line 511
    iput-object v7, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    .line 512
    .line 513
    move-object/from16 v7, p1

    .line 514
    .line 515
    move-object/from16 v8, p2

    .line 516
    .line 517
    move-object/from16 v11, p3

    .line 518
    .line 519
    move-object/from16 v12, v16

    .line 520
    .line 521
    move-object/from16 v13, v17

    .line 522
    .line 523
    goto/16 :goto_9

    .line 524
    .line 525
    :cond_16
    iget-object v0, v15, Lcom/android/systemui/animation/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    .line 526
    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v2, "New font cannot be interpolated with existing font. "

    .line 530
    .line 531
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw v1

    .line 557
    :cond_17
    move-object/from16 p1, v7

    .line 558
    .line 559
    move-object/from16 p2, v8

    .line 560
    .line 561
    move-object/from16 v16, v12

    .line 562
    .line 563
    move-object/from16 v17, v13

    .line 564
    .line 565
    iget-object v7, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->baseX:[F

    .line 566
    .line 567
    array-length v7, v7

    .line 568
    const/4 v8, 0x0

    .line 569
    :goto_d
    if-ge v8, v7, :cond_18

    .line 570
    .line 571
    invoke-virtual {v6, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    .line 572
    .line 573
    .line 574
    move-result v11

    .line 575
    iget-object v12, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->targetX:[F

    .line 576
    .line 577
    aput v11, v12, v8

    .line 578
    .line 579
    invoke-virtual {v6, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    .line 580
    .line 581
    .line 582
    move-result v11

    .line 583
    iget-object v12, v2, Lcom/android/systemui/animation/TextInterpolator$Run;->targetY:[F

    .line 584
    .line 585
    aput v11, v12, v8

    .line 586
    .line 587
    add-int/lit8 v8, v8, 0x1

    .line 588
    .line 589
    goto :goto_d

    .line 590
    :cond_18
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 591
    .line 592
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-object/from16 v7, p1

    .line 596
    .line 597
    move-object/from16 v8, p2

    .line 598
    .line 599
    move-object/from16 v12, v16

    .line 600
    .line 601
    move-object/from16 v13, v17

    .line 602
    .line 603
    goto/16 :goto_7

    .line 604
    .line 605
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 606
    .line 607
    const-string v1, "The new layout has different glyph count."

    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v0

    .line 617
    :cond_1a
    move-object/from16 p1, v7

    .line 618
    .line 619
    move-object/from16 p2, v8

    .line 620
    .line 621
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    const/16 v11, 0xa

    .line 625
    .line 626
    move-object/from16 v7, p1

    .line 627
    .line 628
    move-object/from16 v8, p2

    .line 629
    .line 630
    goto/16 :goto_6

    .line 631
    .line 632
    :cond_1b
    if-eqz p4, :cond_1f

    .line 633
    .line 634
    move-wide/from16 v6, p8

    .line 635
    .line 636
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 637
    .line 638
    .line 639
    const-wide/16 v5, -0x1

    .line 640
    .line 641
    cmp-long v2, p5, v5

    .line 642
    .line 643
    if-nez v2, :cond_1c

    .line 644
    .line 645
    const-wide/16 v5, 0x12c

    .line 646
    .line 647
    goto :goto_e

    .line 648
    :cond_1c
    move-wide/from16 v5, p5

    .line 649
    .line 650
    :goto_e
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 651
    .line 652
    .line 653
    if-eqz v3, :cond_1d

    .line 654
    .line 655
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 656
    .line 657
    .line 658
    :cond_1d
    if-eqz v4, :cond_1e

    .line 659
    .line 660
    new-instance v2, Lcom/android/systemui/animation/TextAnimator$setTextStyle$listener$1;

    .line 661
    .line 662
    invoke-direct {v2, v4, v0}, Lcom/android/systemui/animation/TextAnimator$setTextStyle$listener$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/animation/TextAnimator;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    .line 667
    .line 668
    :cond_1e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 669
    .line 670
    .line 671
    goto :goto_f

    .line 672
    :cond_1f
    const/high16 v1, 0x3f800000    # 1.0f

    .line 673
    .line 674
    iput v1, v5, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 675
    .line 676
    invoke-virtual {v5}, Lcom/android/systemui/animation/TextInterpolator;->rebase()V

    .line 677
    .line 678
    .line 679
    iget-object v0, v0, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    .line 680
    .line 681
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    :goto_f
    return-void

    .line 685
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 686
    .line 687
    const-string v1, "The new layout result has different line count."

    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v0
.end method
