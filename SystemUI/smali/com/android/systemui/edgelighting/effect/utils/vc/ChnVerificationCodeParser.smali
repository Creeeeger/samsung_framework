.class public final Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;
.super Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCodeBehindEndIndex:I

.field public mCodeBehindStartIndex:I

.field public mCodeFrontEndIndex:I

.field public mCodeFrontStartIndex:I

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v3, "isVerificationCode() is false"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const-string v5, "ORC/ChnVerificationCodeParser"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v4

    .line 20
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const v7, 0x7f0300a3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v7, 0x7f0300a2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const/4 v8, -0x1

    .line 45
    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    .line 46
    .line 47
    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    .line 48
    .line 49
    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    .line 50
    .line 51
    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    .line 52
    .line 53
    array-length v9, v6

    .line 54
    move-object v0, v4

    .line 55
    move v12, v8

    .line 56
    const/4 v11, 0x0

    .line 57
    :goto_0
    const-string v13, "-"

    .line 58
    .line 59
    const-string v15, "[0-9]{4,}"

    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    if-ge v11, v9, :cond_b

    .line 63
    .line 64
    aget-object v10, v6, v11

    .line 65
    .line 66
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v17

    .line 70
    move-object/from16 v18, v2

    .line 71
    .line 72
    move/from16 v22, v17

    .line 73
    .line 74
    move/from16 v17, v12

    .line 75
    .line 76
    move/from16 v12, v22

    .line 77
    .line 78
    :goto_1
    if-eq v12, v8, :cond_a

    .line 79
    .line 80
    if-nez v0, :cond_a

    .line 81
    .line 82
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    if-le v8, v14, :cond_9

    .line 91
    .line 92
    move-object/from16 v0, v18

    .line 93
    .line 94
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    if-lt v14, v4, :cond_2

    .line 103
    .line 104
    const/4 v14, 0x3

    .line 105
    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    const v4, 0xff01

    .line 110
    .line 111
    .line 112
    if-ne v14, v4, :cond_2

    .line 113
    .line 114
    :cond_1
    move/from16 v19, v9

    .line 115
    .line 116
    :goto_2
    const/4 v4, 0x0

    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :cond_2
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :goto_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_1

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    move/from16 v19, v9

    .line 142
    .line 143
    const/4 v9, 0x4

    .line 144
    if-lt v14, v9, :cond_4

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    const/4 v14, 0x7

    .line 155
    if-gt v9, v14, :cond_4

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    add-int/2addr v9, v12

    .line 162
    iput v9, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    add-int/2addr v9, v12

    .line 169
    iput v9, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    .line 170
    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v14, "mCodeBehindStartIndex = "

    .line 174
    .line 175
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget v14, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    .line 179
    .line 180
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v14, "mCodeBehindEndIndex = "

    .line 193
    .line 194
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget v14, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    .line 198
    .line 199
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    if-le v9, v14, :cond_3

    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-eqz v8, :cond_3

    .line 236
    .line 237
    const-string v4, "getBehindCode return null code"

    .line 238
    .line 239
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    goto :goto_4

    .line 248
    :cond_4
    move/from16 v9, v19

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :goto_4
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    add-int/2addr v8, v12

    .line 256
    const/4 v9, 0x1

    .line 257
    sub-int/2addr v8, v9

    .line 258
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-nez v8, :cond_8

    .line 267
    .line 268
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    const/4 v9, -0x1

    .line 273
    if-eq v8, v9, :cond_7

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    array-length v9, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    move-object/from16 v17, v4

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    :goto_5
    if-ge v4, v9, :cond_6

    .line 285
    .line 286
    move/from16 v20, v9

    .line 287
    .line 288
    :try_start_1
    aget-object v9, v7, v4

    .line 289
    .line 290
    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v9
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    move/from16 v21, v12

    .line 295
    .line 296
    const/4 v12, -0x1

    .line 297
    if-eq v9, v12, :cond_5

    .line 298
    .line 299
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    const/16 v17, 0x0

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const/4 v4, 0x0

    .line 312
    goto :goto_9

    .line 313
    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 314
    .line 315
    move/from16 v9, v20

    .line 316
    .line 317
    move/from16 v12, v21

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catch_1
    move-exception v0

    .line 321
    move/from16 v21, v12

    .line 322
    .line 323
    const/4 v12, -0x1

    .line 324
    move-object/from16 v4, v17

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_6
    move/from16 v21, v12

    .line 328
    .line 329
    const/4 v12, -0x1

    .line 330
    move-object v4, v0

    .line 331
    move-object/from16 v0, v17

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_7
    move/from16 v21, v12

    .line 335
    .line 336
    move v12, v9

    .line 337
    goto :goto_7

    .line 338
    :cond_8
    move/from16 v21, v12

    .line 339
    .line 340
    const/4 v12, -0x1

    .line 341
    :try_start_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v8
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 345
    :goto_7
    move-object/from16 v22, v4

    .line 346
    .line 347
    move-object v4, v0

    .line 348
    move-object/from16 v0, v22

    .line 349
    .line 350
    :goto_8
    move-object/from16 v18, v4

    .line 351
    .line 352
    move/from16 v9, v19

    .line 353
    .line 354
    move/from16 v17, v21

    .line 355
    .line 356
    const/4 v4, 0x4

    .line 357
    move/from16 v22, v12

    .line 358
    .line 359
    move v12, v8

    .line 360
    move/from16 v8, v22

    .line 361
    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :catch_2
    move-exception v0

    .line 365
    goto :goto_9

    .line 366
    :catch_3
    move-exception v0

    .line 367
    move/from16 v21, v12

    .line 368
    .line 369
    const/4 v12, -0x1

    .line 370
    :goto_9
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .line 376
    .line 377
    move-object v0, v4

    .line 378
    move/from16 v17, v21

    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_9
    move/from16 v19, v9

    .line 382
    .line 383
    const/4 v12, -0x1

    .line 384
    goto :goto_a

    .line 385
    :cond_a
    move v12, v8

    .line 386
    move/from16 v19, v9

    .line 387
    .line 388
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 389
    .line 390
    move v8, v12

    .line 391
    move/from16 v12, v17

    .line 392
    .line 393
    move/from16 v9, v19

    .line 394
    .line 395
    const/4 v4, 0x0

    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_b
    move/from16 v17, v12

    .line 399
    .line 400
    array-length v4, v6

    .line 401
    const/4 v8, 0x0

    .line 402
    const/4 v9, 0x0

    .line 403
    :goto_b
    if-ge v9, v4, :cond_10

    .line 404
    .line 405
    aget-object v10, v6, v9

    .line 406
    .line 407
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    const/4 v11, 0x4

    .line 412
    if-le v10, v11, :cond_f

    .line 413
    .line 414
    const/4 v14, 0x0

    .line 415
    invoke-virtual {v2, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 420
    .line 421
    .line 422
    move-result-object v12

    .line 423
    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    :goto_c
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 430
    .line 431
    .line 432
    move-result v17

    .line 433
    if-eqz v17, :cond_e

    .line 434
    .line 435
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v17

    .line 439
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 440
    .line 441
    .line 442
    move-result v14

    .line 443
    if-lt v14, v11, :cond_d

    .line 444
    .line 445
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    const/4 v14, 0x7

    .line 454
    if-gt v11, v14, :cond_d

    .line 455
    .line 456
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    .line 457
    .line 458
    .line 459
    move-result v11

    .line 460
    iput v11, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    .line 461
    .line 462
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    .line 463
    .line 464
    .line 465
    move-result v11

    .line 466
    iput v11, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    .line 467
    .line 468
    new-instance v11, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v14, "mCodeFrontStartIndex = "

    .line 471
    .line 472
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget v14, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    .line 476
    .line 477
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    new-instance v11, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v14, "mCodeFrontEndIndex = "

    .line 490
    .line 491
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget v14, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    .line 495
    .line 496
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v11

    .line 510
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    .line 511
    .line 512
    .line 513
    move-result v14

    .line 514
    if-le v11, v14, :cond_c

    .line 515
    .line 516
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    .line 517
    .line 518
    .line 519
    move-result v11

    .line 520
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v11

    .line 528
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v11

    .line 532
    if-eqz v11, :cond_c

    .line 533
    .line 534
    const-string v8, "getFrontCode return null code"

    .line 535
    .line 536
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    const/4 v8, 0x0

    .line 540
    goto :goto_d

    .line 541
    :cond_c
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v16

    .line 545
    :cond_d
    const/4 v11, 0x4

    .line 546
    const/4 v14, 0x0

    .line 547
    goto :goto_c

    .line 548
    :cond_e
    move-object/from16 v8, v16

    .line 549
    .line 550
    :goto_d
    move v12, v10

    .line 551
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 552
    .line 553
    goto/16 :goto_b

    .line 554
    .line 555
    :cond_10
    array-length v4, v7

    .line 556
    const/4 v6, 0x0

    .line 557
    const/4 v10, 0x0

    .line 558
    :goto_e
    if-ge v10, v4, :cond_12

    .line 559
    .line 560
    aget-object v9, v7, v10

    .line 561
    .line 562
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    if-le v9, v12, :cond_11

    .line 567
    .line 568
    iget v11, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    .line 569
    .line 570
    if-le v11, v9, :cond_11

    .line 571
    .line 572
    const/4 v6, 0x1

    .line 573
    :cond_11
    add-int/lit8 v10, v10, 0x1

    .line 574
    .line 575
    goto :goto_e

    .line 576
    :cond_12
    const-string v1, "KEY_STRONGLY_STR FrontCode= "

    .line 577
    .line 578
    const-string v2, "isVerificationCode() is true"

    .line 579
    .line 580
    if-eqz v0, :cond_18

    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    const-string v4, "KEY_STRONGLY_STR BehindCode= "

    .line 587
    .line 588
    const/4 v7, 0x4

    .line 589
    if-ne v7, v3, :cond_13

    .line 590
    .line 591
    const/4 v3, 0x1

    .line 592
    if-ne v6, v3, :cond_14

    .line 593
    .line 594
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    const/4 v6, 0x6

    .line 599
    if-ne v6, v3, :cond_15

    .line 600
    .line 601
    :cond_14
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    return-object v0

    .line 612
    :cond_15
    if-eqz v8, :cond_17

    .line 613
    .line 614
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    const/4 v7, 0x4

    .line 619
    if-eq v7, v3, :cond_16

    .line 620
    .line 621
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    if-ne v6, v3, :cond_17

    .line 626
    .line 627
    :cond_16
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    return-object v8

    .line 638
    :cond_17
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    return-object v0

    .line 649
    :cond_18
    if-eqz v8, :cond_19

    .line 650
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    return-object v8

    .line 670
    :cond_19
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .line 672
    .line 673
    const/4 v1, 0x0

    .line 674
    return-object v1
.end method
