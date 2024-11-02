.class public final Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final gmtOffsetTexts:[Ljava/lang/CharSequence;

.field public final olsonIdsToDisplay:[Ljava/lang/String;

.field public final timeZones:[Ljava/util/TimeZone;

.field public final zoneCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/util/Date;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "ZoneGetter"

    .line 26
    .line 27
    new-instance v6, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const v10, 0x7f17001c

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 43
    .line 44
    .line 45
    move-result-object v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eq v10, v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/4 v11, 0x3

    .line 61
    if-eq v10, v11, :cond_5

    .line 62
    .line 63
    :goto_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eq v10, v0, :cond_2

    .line 68
    .line 69
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-ne v10, v8, :cond_1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    const-string/jumbo v12, "timezone"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    invoke-interface {v9, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-eq v10, v11, :cond_4

    .line 105
    .line 106
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    :goto_4
    :try_start_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_6

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    move-object v10, v0

    .line 120
    if-eqz v9, :cond_6

    .line 121
    .line 122
    :try_start_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    move-object v9, v0

    .line 128
    :try_start_4
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_5
    throw v10
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    :catch_0
    const-string v0, "Unable to read timezones.xml file"

    .line 133
    .line 134
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catch_1
    const-string v0, "Ill-formatted timezones.xml file"

    .line 139
    .line 140
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    .line 148
    .line 149
    new-array v5, v0, [Ljava/lang/String;

    .line 150
    .line 151
    iput-object v5, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    .line 152
    .line 153
    new-array v5, v0, [Ljava/util/TimeZone;

    .line 154
    .line 155
    iput-object v5, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    .line 156
    .line 157
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 158
    .line 159
    iput-object v0, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    .line 160
    .line 161
    move v0, v7

    .line 162
    :goto_7
    iget v5, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    .line 163
    .line 164
    if-ge v7, v5, :cond_17

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Ljava/lang/String;

    .line 171
    .line 172
    iget-object v9, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    .line 173
    .line 174
    aput-object v5, v9, v7

    .line 175
    .line 176
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    iget-object v9, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    .line 181
    .line 182
    aput-object v5, v9, v7

    .line 183
    .line 184
    iget-object v9, v1, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    .line 185
    .line 186
    new-instance v10, Landroid/text/SpannableStringBuilder;

    .line 187
    .line 188
    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    const-string/jumbo v12, "{0}"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    const/4 v13, -0x1

    .line 203
    if-ne v12, v13, :cond_7

    .line 204
    .line 205
    const-string v11, "GMT"

    .line 206
    .line 207
    const-string v12, ""

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_7
    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    add-int/lit8 v12, v12, 0x3

    .line 215
    .line 216
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    move-object v11, v13

    .line 221
    :goto_8
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-nez v13, :cond_8

    .line 226
    .line 227
    new-instance v13, Landroid/text/style/TtsSpan$TextBuilder;

    .line 228
    .line 229
    invoke-direct {v13, v11}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v13}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    invoke-static {v10, v11, v13}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 237
    .line 238
    .line 239
    :cond_8
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v13

    .line 243
    invoke-virtual {v5, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-gez v5, :cond_9

    .line 248
    .line 249
    move v0, v8

    .line 250
    :cond_9
    if-eqz v0, :cond_a

    .line 251
    .line 252
    neg-int v5, v5

    .line 253
    sget-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_a
    sget-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 257
    .line 258
    :goto_9
    invoke-virtual {v3, v0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    int-to-long v13, v5

    .line 267
    const-wide/32 v15, 0x36ee80

    .line 268
    .line 269
    .line 270
    move-object v5, v3

    .line 271
    move-object v11, v4

    .line 272
    div-long v3, v13, v15

    .line 273
    .line 274
    long-to-int v3, v3

    .line 275
    const-wide/32 v15, 0xea60

    .line 276
    .line 277
    .line 278
    div-long/2addr v13, v15

    .line 279
    long-to-int v4, v13

    .line 280
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    rem-int/lit8 v4, v4, 0x3c

    .line 285
    .line 286
    const/4 v13, 0x0

    .line 287
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    if-ge v13, v14, :cond_13

    .line 292
    .line 293
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    const/16 v15, 0x2b

    .line 298
    .line 299
    if-eq v14, v15, :cond_12

    .line 300
    .line 301
    const/16 v15, 0x2d

    .line 302
    .line 303
    if-eq v14, v15, :cond_12

    .line 304
    .line 305
    const/16 v15, 0x2212

    .line 306
    .line 307
    if-ne v14, v15, :cond_b

    .line 308
    .line 309
    goto/16 :goto_e

    .line 310
    .line 311
    :cond_b
    const/16 v15, 0x48

    .line 312
    .line 313
    if-eq v14, v15, :cond_d

    .line 314
    .line 315
    const/16 v15, 0x6d

    .line 316
    .line 317
    if-ne v14, v15, :cond_c

    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_c
    invoke-virtual {v10, v14}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 321
    .line 322
    .line 323
    move-object/from16 p1, v0

    .line 324
    .line 325
    move/from16 v16, v3

    .line 326
    .line 327
    move/from16 v17, v4

    .line 328
    .line 329
    move-object/from16 v18, v5

    .line 330
    .line 331
    move-object/from16 v19, v6

    .line 332
    .line 333
    goto/16 :goto_f

    .line 334
    .line 335
    :cond_d
    :goto_b
    add-int/lit8 v15, v13, 0x1

    .line 336
    .line 337
    move/from16 v16, v3

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-ge v15, v3, :cond_e

    .line 344
    .line 345
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-ne v3, v14, :cond_e

    .line 350
    .line 351
    const/4 v3, 0x2

    .line 352
    move v13, v15

    .line 353
    goto :goto_c

    .line 354
    :cond_e
    const/4 v3, 0x1

    .line 355
    :goto_c
    const/16 v15, 0x48

    .line 356
    .line 357
    if-ne v14, v15, :cond_f

    .line 358
    .line 359
    const-string v14, "hour"

    .line 360
    .line 361
    move/from16 v15, v16

    .line 362
    .line 363
    goto :goto_d

    .line 364
    :cond_f
    const-string/jumbo v14, "minute"

    .line 365
    .line 366
    .line 367
    move v15, v4

    .line 368
    :goto_d
    move-object/from16 p1, v0

    .line 369
    .line 370
    div-int/lit8 v0, v15, 0xa

    .line 371
    .line 372
    move/from16 v17, v4

    .line 373
    .line 374
    rem-int/lit8 v4, v15, 0xa

    .line 375
    .line 376
    move-object/from16 v18, v5

    .line 377
    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .line 382
    .line 383
    move-object/from16 v19, v6

    .line 384
    .line 385
    const/16 v6, 0xa

    .line 386
    .line 387
    if-ge v15, v6, :cond_10

    .line 388
    .line 389
    const/4 v6, 0x2

    .line 390
    if-ne v3, v6, :cond_11

    .line 391
    .line 392
    :cond_10
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    :cond_11
    invoke-static {v8, v4, v5}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    new-instance v3, Landroid/text/style/TtsSpan$MeasureBuilder;

    .line 404
    .line 405
    invoke-direct {v3}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    int-to-long v4, v15

    .line 409
    invoke-virtual {v3, v4, v5}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v3, v14}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v3}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-static {v10, v0, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 422
    .line 423
    .line 424
    goto :goto_f

    .line 425
    :cond_12
    :goto_e
    move-object/from16 p1, v0

    .line 426
    .line 427
    move/from16 v16, v3

    .line 428
    .line 429
    move/from16 v17, v4

    .line 430
    .line 431
    move-object/from16 v18, v5

    .line 432
    .line 433
    move-object/from16 v19, v6

    .line 434
    .line 435
    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    new-instance v3, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 440
    .line 441
    invoke-direct {v3, v0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    invoke-static {v10, v0, v3}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 449
    .line 450
    .line 451
    :goto_f
    add-int/lit8 v13, v13, 0x1

    .line 452
    .line 453
    move-object/from16 v0, p1

    .line 454
    .line 455
    move/from16 v3, v16

    .line 456
    .line 457
    move/from16 v4, v17

    .line 458
    .line 459
    move-object/from16 v5, v18

    .line 460
    .line 461
    move-object/from16 v6, v19

    .line 462
    .line 463
    goto/16 :goto_a

    .line 464
    .line 465
    :cond_13
    move-object/from16 v18, v5

    .line 466
    .line 467
    move-object/from16 v19, v6

    .line 468
    .line 469
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-nez v0, :cond_14

    .line 474
    .line 475
    new-instance v0, Landroid/text/style/TtsSpan$TextBuilder;

    .line 476
    .line 477
    invoke-direct {v0, v12}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-static {v10, v12, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 485
    .line 486
    .line 487
    :cond_14
    new-instance v0, Landroid/text/SpannableString;

    .line 488
    .line 489
    invoke-direct {v0, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    const/4 v8, 0x1

    .line 501
    if-ne v4, v8, :cond_15

    .line 502
    .line 503
    move v4, v8

    .line 504
    goto :goto_10

    .line 505
    :cond_15
    const/4 v4, 0x0

    .line 506
    :goto_10
    if-eqz v4, :cond_16

    .line 507
    .line 508
    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_16
    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    .line 512
    .line 513
    :goto_11
    invoke-virtual {v3, v0, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    aput-object v0, v9, v7

    .line 518
    .line 519
    add-int/lit8 v7, v7, 0x1

    .line 520
    .line 521
    const/4 v0, 0x0

    .line 522
    move-object v4, v11

    .line 523
    move-object/from16 v3, v18

    .line 524
    .line 525
    move-object/from16 v6, v19

    .line 526
    .line 527
    goto/16 :goto_7

    .line 528
    .line 529
    :cond_17
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v1, v0}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    if-eqz v0, :cond_18

    .line 538
    .line 539
    new-instance v1, Ljava/util/HashSet;

    .line 540
    .line 541
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 542
    .line 543
    .line 544
    goto :goto_12

    .line 545
    :cond_18
    new-instance v0, Ljava/util/HashSet;

    .line 546
    .line 547
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 548
    .line 549
    .line 550
    :goto_12
    return-void
.end method


# virtual methods
.method public lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
