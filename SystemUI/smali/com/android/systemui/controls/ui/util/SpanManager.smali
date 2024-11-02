.class public final Lcom/android/systemui/controls/ui/util/SpanManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public maxSpan:I

.field public final spanInfos:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final updateSpanInfos(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 37
    .line 38
    iget v6, v6, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    .line 39
    .line 40
    if-lez v6, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v4, v5

    .line 44
    :goto_1
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 83
    .line 84
    iget v3, v3, Lcom/android/systemui/controls/ui/util/SpanInfo;->width:I

    .line 85
    .line 86
    iget-object v6, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 87
    .line 88
    if-lez p1, :cond_3

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 95
    .line 96
    invoke-virtual {v6, p1, v3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getAvailableSpanCount(II)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iput v3, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 108
    .line 109
    iget-object v7, v6, Lcom/android/systemui/controls/ui/util/LayoutUtil;->context:Landroid/content/Context;

    .line 110
    .line 111
    const-string/jumbo v8, "window"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Landroid/view/WindowManager;

    .line 119
    .line 120
    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    or-int/2addr v10, v11

    .line 137
    invoke-virtual {v9, v10}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    iget v10, v9, Landroid/graphics/Insets;->right:I

    .line 142
    .line 143
    iget v11, v9, Landroid/graphics/Insets;->left:I

    .line 144
    .line 145
    add-int/2addr v10, v11

    .line 146
    iget v11, v9, Landroid/graphics/Insets;->top:I

    .line 147
    .line 148
    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    .line 149
    .line 150
    add-int/2addr v11, v9

    .line 151
    new-instance v9, Landroid/util/Size;

    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    sub-int/2addr v12, v10

    .line 162
    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    sub-int/2addr v8, v11

    .line 171
    invoke-direct {v9, v12, v8}, Landroid/util/Size;-><init>(II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const v8, 0x7f0b0037

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    iget-object v8, v6, Lcom/android/systemui/controls/ui/util/LayoutUtil;->context:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 196
    .line 197
    const/16 v10, 0x19b

    .line 198
    .line 199
    if-le v8, v10, :cond_4

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    .line 203
    .line 204
    :goto_3
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    int-to-float v8, v8

    .line 209
    mul-float/2addr v8, v7

    .line 210
    float-to-int v7, v8

    .line 211
    invoke-virtual {v6, v7, v3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getAvailableSpanCount(II)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    iput v3, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_8

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    move-object v3, v2

    .line 243
    check-cast v3, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 244
    .line 245
    iget v3, v3, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    .line 246
    .line 247
    if-lez v3, :cond_7

    .line 248
    .line 249
    move v3, v4

    .line 250
    goto :goto_5

    .line 251
    :cond_7
    move v3, v5

    .line 252
    :goto_5
    if-eqz v3, :cond_6

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_a

    .line 267
    .line 268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 273
    .line 274
    iget v1, v1, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    .line 275
    .line 276
    mul-int v2, v4, v1

    .line 277
    .line 278
    :goto_7
    if-nez v1, :cond_9

    .line 279
    .line 280
    div-int v4, v2, v4

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_9
    rem-int/2addr v4, v1

    .line 284
    move v13, v4

    .line 285
    move v4, v1

    .line 286
    move v1, v13

    .line 287
    goto :goto_7

    .line 288
    :cond_a
    iput v4, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_b

    .line 303
    .line 304
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Ljava/util/Map$Entry;

    .line 309
    .line 310
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 315
    .line 316
    iget v3, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 323
    .line 324
    iget v1, v1, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    .line 325
    .line 326
    div-int/2addr v3, v1

    .line 327
    iput v3, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_b
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    .line 331
    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v1, "SpanManager maxSpan="

    .line 335
    .line 336
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    const-string p1, "ControlsSpanManager"

    .line 347
    .line 348
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_c

    .line 364
    .line 365
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 380
    .line 381
    iget v2, v2, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    .line 382
    .line 383
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 388
    .line 389
    iget v0, v0, Lcom/android/systemui/controls/ui/util/SpanInfo;->numberPerLine:I

    .line 390
    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v4, "SpanManager ["

    .line 394
    .line 395
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v1, "] span="

    .line 402
    .line 403
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v1, ", "

    .line 410
    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-static {v3, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    goto :goto_9

    .line 418
    :cond_c
    return-void
.end method
