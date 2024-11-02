.class public final Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createFromPromptReason(II)Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->securityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v4

    .line 30
    :goto_0
    const v2, 0x7f130797

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const v5, 0x7f130795

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x7f130796

    .line 45
    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x3

    .line 57
    const/4 v9, 0x2

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    move-object v0, v7

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :pswitch_0
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    aget v0, v0, v1

    .line 71
    .line 72
    if-eq v0, v3, :cond_3

    .line 73
    .line 74
    if-eq v0, v9, :cond_2

    .line 75
    .line 76
    if-eq v0, v8, :cond_1

    .line 77
    .line 78
    new-instance v0, Lkotlin/Pair;

    .line 79
    .line 80
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_1
    new-instance v0, Lkotlin/Pair;

    .line 86
    .line 87
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_2
    new-instance v0, Lkotlin/Pair;

    .line 93
    .line 94
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_3
    new-instance v0, Lkotlin/Pair;

    .line 100
    .line 101
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :pswitch_1
    if-eqz v0, :cond_7

    .line 107
    .line 108
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    aget v0, v0, v1

    .line 115
    .line 116
    if-eq v0, v3, :cond_6

    .line 117
    .line 118
    if-eq v0, v9, :cond_5

    .line 119
    .line 120
    if-eq v0, v8, :cond_4

    .line 121
    .line 122
    new-instance v0, Lkotlin/Pair;

    .line 123
    .line 124
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_4
    new-instance v0, Lkotlin/Pair;

    .line 130
    .line 131
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_5
    new-instance v0, Lkotlin/Pair;

    .line 137
    .line 138
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_6
    new-instance v0, Lkotlin/Pair;

    .line 144
    .line 145
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_7
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    aget v0, v0, v1

    .line 157
    .line 158
    if-eq v0, v3, :cond_a

    .line 159
    .line 160
    if-eq v0, v9, :cond_9

    .line 161
    .line 162
    if-eq v0, v8, :cond_8

    .line 163
    .line 164
    new-instance v0, Lkotlin/Pair;

    .line 165
    .line 166
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_8
    new-instance v0, Lkotlin/Pair;

    .line 172
    .line 173
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_9
    new-instance v0, Lkotlin/Pair;

    .line 179
    .line 180
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :cond_a
    new-instance v0, Lkotlin/Pair;

    .line 186
    .line 187
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :pswitch_2
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    aget v0, v0, v1

    .line 199
    .line 200
    if-eq v0, v3, :cond_d

    .line 201
    .line 202
    if-eq v0, v9, :cond_c

    .line 203
    .line 204
    if-eq v0, v8, :cond_b

    .line 205
    .line 206
    new-instance v0, Lkotlin/Pair;

    .line 207
    .line 208
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_b
    new-instance v0, Lkotlin/Pair;

    .line 214
    .line 215
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_c
    new-instance v0, Lkotlin/Pair;

    .line 221
    .line 222
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_d
    new-instance v0, Lkotlin/Pair;

    .line 228
    .line 229
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_3
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    aget v0, v0, v1

    .line 241
    .line 242
    if-eq v0, v3, :cond_10

    .line 243
    .line 244
    if-eq v0, v9, :cond_f

    .line 245
    .line 246
    if-eq v0, v8, :cond_e

    .line 247
    .line 248
    new-instance v0, Lkotlin/Pair;

    .line 249
    .line 250
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_e
    new-instance v0, Lkotlin/Pair;

    .line 256
    .line 257
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_f
    new-instance v0, Lkotlin/Pair;

    .line 263
    .line 264
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_10
    new-instance v0, Lkotlin/Pair;

    .line 270
    .line 271
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :pswitch_4
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    aget v0, v0, v1

    .line 283
    .line 284
    if-eq v0, v3, :cond_13

    .line 285
    .line 286
    if-eq v0, v9, :cond_12

    .line 287
    .line 288
    if-eq v0, v8, :cond_11

    .line 289
    .line 290
    new-instance v0, Lkotlin/Pair;

    .line 291
    .line 292
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_11
    new-instance v0, Lkotlin/Pair;

    .line 298
    .line 299
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_12
    new-instance v0, Lkotlin/Pair;

    .line 305
    .line 306
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :cond_13
    new-instance v0, Lkotlin/Pair;

    .line 312
    .line 313
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :pswitch_5
    if-eqz v0, :cond_17

    .line 319
    .line 320
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    aget v0, v0, v1

    .line 327
    .line 328
    if-eq v0, v3, :cond_16

    .line 329
    .line 330
    if-eq v0, v9, :cond_15

    .line 331
    .line 332
    if-eq v0, v8, :cond_14

    .line 333
    .line 334
    new-instance v0, Lkotlin/Pair;

    .line 335
    .line 336
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :cond_14
    new-instance v0, Lkotlin/Pair;

    .line 342
    .line 343
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_15
    new-instance v0, Lkotlin/Pair;

    .line 349
    .line 350
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_16
    new-instance v0, Lkotlin/Pair;

    .line 356
    .line 357
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :cond_17
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    aget v0, v0, v1

    .line 369
    .line 370
    if-eq v0, v3, :cond_1a

    .line 371
    .line 372
    if-eq v0, v9, :cond_19

    .line 373
    .line 374
    if-eq v0, v8, :cond_18

    .line 375
    .line 376
    new-instance v0, Lkotlin/Pair;

    .line 377
    .line 378
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_1

    .line 382
    .line 383
    :cond_18
    new-instance v0, Lkotlin/Pair;

    .line 384
    .line 385
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :cond_19
    new-instance v0, Lkotlin/Pair;

    .line 391
    .line 392
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :cond_1a
    new-instance v0, Lkotlin/Pair;

    .line 398
    .line 399
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    :pswitch_6
    if-eqz v0, :cond_1e

    .line 405
    .line 406
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    aget v0, v0, v1

    .line 413
    .line 414
    if-eq v0, v3, :cond_1d

    .line 415
    .line 416
    if-eq v0, v9, :cond_1c

    .line 417
    .line 418
    if-eq v0, v8, :cond_1b

    .line 419
    .line 420
    new-instance v0, Lkotlin/Pair;

    .line 421
    .line 422
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :cond_1b
    new-instance v0, Lkotlin/Pair;

    .line 428
    .line 429
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :cond_1c
    new-instance v0, Lkotlin/Pair;

    .line 435
    .line 436
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :cond_1d
    new-instance v0, Lkotlin/Pair;

    .line 442
    .line 443
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_1

    .line 447
    .line 448
    :cond_1e
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    aget v0, v0, v1

    .line 455
    .line 456
    if-eq v0, v3, :cond_21

    .line 457
    .line 458
    if-eq v0, v9, :cond_20

    .line 459
    .line 460
    if-eq v0, v8, :cond_1f

    .line 461
    .line 462
    new-instance v0, Lkotlin/Pair;

    .line 463
    .line 464
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_1f
    new-instance v0, Lkotlin/Pair;

    .line 470
    .line 471
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_1

    .line 475
    .line 476
    :cond_20
    new-instance v0, Lkotlin/Pair;

    .line 477
    .line 478
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :cond_21
    new-instance v0, Lkotlin/Pair;

    .line 484
    .line 485
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_1

    .line 489
    .line 490
    :pswitch_7
    if-eqz v0, :cond_25

    .line 491
    .line 492
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    aget v0, v0, v1

    .line 499
    .line 500
    if-eq v0, v3, :cond_24

    .line 501
    .line 502
    if-eq v0, v9, :cond_23

    .line 503
    .line 504
    if-eq v0, v8, :cond_22

    .line 505
    .line 506
    new-instance v0, Lkotlin/Pair;

    .line 507
    .line 508
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_22
    new-instance v0, Lkotlin/Pair;

    .line 514
    .line 515
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_1

    .line 519
    .line 520
    :cond_23
    new-instance v0, Lkotlin/Pair;

    .line 521
    .line 522
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_1

    .line 526
    .line 527
    :cond_24
    new-instance v0, Lkotlin/Pair;

    .line 528
    .line 529
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_1

    .line 533
    .line 534
    :cond_25
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    aget v0, v0, v1

    .line 541
    .line 542
    if-eq v0, v3, :cond_28

    .line 543
    .line 544
    if-eq v0, v9, :cond_27

    .line 545
    .line 546
    if-eq v0, v8, :cond_26

    .line 547
    .line 548
    new-instance v0, Lkotlin/Pair;

    .line 549
    .line 550
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_1

    .line 554
    .line 555
    :cond_26
    new-instance v0, Lkotlin/Pair;

    .line 556
    .line 557
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_1

    .line 561
    .line 562
    :cond_27
    new-instance v0, Lkotlin/Pair;

    .line 563
    .line 564
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_1

    .line 568
    .line 569
    :cond_28
    new-instance v0, Lkotlin/Pair;

    .line 570
    .line 571
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_1

    .line 575
    .line 576
    :pswitch_8
    if-eqz v0, :cond_2c

    .line 577
    .line 578
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    aget v0, v0, v1

    .line 585
    .line 586
    if-eq v0, v3, :cond_2b

    .line 587
    .line 588
    if-eq v0, v9, :cond_2a

    .line 589
    .line 590
    if-eq v0, v8, :cond_29

    .line 591
    .line 592
    new-instance v0, Lkotlin/Pair;

    .line 593
    .line 594
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_1

    .line 598
    .line 599
    :cond_29
    new-instance v0, Lkotlin/Pair;

    .line 600
    .line 601
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_1

    .line 605
    .line 606
    :cond_2a
    new-instance v0, Lkotlin/Pair;

    .line 607
    .line 608
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_1

    .line 612
    .line 613
    :cond_2b
    new-instance v0, Lkotlin/Pair;

    .line 614
    .line 615
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_1

    .line 619
    .line 620
    :cond_2c
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    aget v0, v0, v1

    .line 627
    .line 628
    if-eq v0, v3, :cond_2f

    .line 629
    .line 630
    if-eq v0, v9, :cond_2e

    .line 631
    .line 632
    if-eq v0, v8, :cond_2d

    .line 633
    .line 634
    new-instance v0, Lkotlin/Pair;

    .line 635
    .line 636
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_1

    .line 640
    .line 641
    :cond_2d
    new-instance v0, Lkotlin/Pair;

    .line 642
    .line 643
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_1

    .line 647
    .line 648
    :cond_2e
    new-instance v0, Lkotlin/Pair;

    .line 649
    .line 650
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_1

    .line 654
    .line 655
    :cond_2f
    new-instance v0, Lkotlin/Pair;

    .line 656
    .line 657
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    goto/16 :goto_1

    .line 661
    .line 662
    :pswitch_9
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    aget v0, v0, v1

    .line 669
    .line 670
    if-eq v0, v3, :cond_32

    .line 671
    .line 672
    if-eq v0, v9, :cond_31

    .line 673
    .line 674
    if-eq v0, v8, :cond_30

    .line 675
    .line 676
    new-instance v0, Lkotlin/Pair;

    .line 677
    .line 678
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_1

    .line 682
    .line 683
    :cond_30
    new-instance v0, Lkotlin/Pair;

    .line 684
    .line 685
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_1

    .line 689
    .line 690
    :cond_31
    new-instance v0, Lkotlin/Pair;

    .line 691
    .line 692
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_1

    .line 696
    .line 697
    :cond_32
    new-instance v0, Lkotlin/Pair;

    .line 698
    .line 699
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_1

    .line 703
    .line 704
    :pswitch_a
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 705
    .line 706
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    aget v0, v0, v1

    .line 711
    .line 712
    if-eq v0, v3, :cond_35

    .line 713
    .line 714
    if-eq v0, v9, :cond_34

    .line 715
    .line 716
    if-eq v0, v8, :cond_33

    .line 717
    .line 718
    new-instance v0, Lkotlin/Pair;

    .line 719
    .line 720
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_1

    .line 724
    .line 725
    :cond_33
    new-instance v0, Lkotlin/Pair;

    .line 726
    .line 727
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_1

    .line 731
    .line 732
    :cond_34
    new-instance v0, Lkotlin/Pair;

    .line 733
    .line 734
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_1

    .line 738
    .line 739
    :cond_35
    new-instance v0, Lkotlin/Pair;

    .line 740
    .line 741
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_1

    .line 745
    .line 746
    :pswitch_b
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 747
    .line 748
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    aget v0, v0, v1

    .line 753
    .line 754
    if-eq v0, v3, :cond_38

    .line 755
    .line 756
    if-eq v0, v9, :cond_37

    .line 757
    .line 758
    if-eq v0, v8, :cond_36

    .line 759
    .line 760
    new-instance v0, Lkotlin/Pair;

    .line 761
    .line 762
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_1

    .line 766
    .line 767
    :cond_36
    new-instance v0, Lkotlin/Pair;

    .line 768
    .line 769
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    goto/16 :goto_1

    .line 773
    .line 774
    :cond_37
    new-instance v0, Lkotlin/Pair;

    .line 775
    .line 776
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    goto/16 :goto_1

    .line 780
    .line 781
    :cond_38
    new-instance v0, Lkotlin/Pair;

    .line 782
    .line 783
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_1

    .line 787
    .line 788
    :pswitch_c
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 789
    .line 790
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    aget v0, v0, v1

    .line 795
    .line 796
    if-eq v0, v3, :cond_3b

    .line 797
    .line 798
    if-eq v0, v9, :cond_3a

    .line 799
    .line 800
    if-eq v0, v8, :cond_39

    .line 801
    .line 802
    new-instance v0, Lkotlin/Pair;

    .line 803
    .line 804
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    goto :goto_1

    .line 808
    :cond_39
    new-instance v0, Lkotlin/Pair;

    .line 809
    .line 810
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    goto :goto_1

    .line 814
    :cond_3a
    new-instance v0, Lkotlin/Pair;

    .line 815
    .line 816
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    goto :goto_1

    .line 820
    :cond_3b
    new-instance v0, Lkotlin/Pair;

    .line 821
    .line 822
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    goto :goto_1

    .line 826
    :pswitch_d
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 827
    .line 828
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    aget v0, v0, v1

    .line 833
    .line 834
    if-eq v0, v3, :cond_3e

    .line 835
    .line 836
    if-eq v0, v9, :cond_3d

    .line 837
    .line 838
    if-eq v0, v8, :cond_3c

    .line 839
    .line 840
    new-instance v0, Lkotlin/Pair;

    .line 841
    .line 842
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    goto :goto_1

    .line 846
    :cond_3c
    new-instance v0, Lkotlin/Pair;

    .line 847
    .line 848
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    goto :goto_1

    .line 852
    :cond_3d
    new-instance v0, Lkotlin/Pair;

    .line 853
    .line 854
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    goto :goto_1

    .line 858
    :cond_3e
    new-instance v0, Lkotlin/Pair;

    .line 859
    .line 860
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    goto :goto_1

    .line 864
    :pswitch_e
    sget-object v0, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    aget v0, v0, v1

    .line 871
    .line 872
    if-eq v0, v3, :cond_41

    .line 873
    .line 874
    if-eq v0, v9, :cond_40

    .line 875
    .line 876
    if-eq v0, v8, :cond_3f

    .line 877
    .line 878
    new-instance v0, Lkotlin/Pair;

    .line 879
    .line 880
    invoke-direct {v0, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    .line 882
    .line 883
    goto :goto_1

    .line 884
    :cond_3f
    new-instance v0, Lkotlin/Pair;

    .line 885
    .line 886
    invoke-direct {v0, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    goto :goto_1

    .line 890
    :cond_40
    new-instance v0, Lkotlin/Pair;

    .line 891
    .line 892
    invoke-direct {v0, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    goto :goto_1

    .line 896
    :cond_41
    new-instance v0, Lkotlin/Pair;

    .line 897
    .line 898
    invoke-direct {v0, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    :goto_1
    if-eqz v0, :cond_42

    .line 902
    .line 903
    new-instance v7, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 904
    .line 905
    new-instance v1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 906
    .line 907
    const/4 v9, 0x0

    .line 908
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    move-object v10, v2

    .line 913
    check-cast v10, Ljava/lang/Integer;

    .line 914
    .line 915
    const/4 v11, 0x0

    .line 916
    const/4 v12, 0x0

    .line 917
    const/4 v13, 0x0

    .line 918
    const/16 v14, 0x1d

    .line 919
    .line 920
    const/4 v15, 0x0

    .line 921
    move-object v8, v1

    .line 922
    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 923
    .line 924
    .line 925
    new-instance v2, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 926
    .line 927
    const/16 v17, 0x0

    .line 928
    .line 929
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    move-object/from16 v18, v0

    .line 934
    .line 935
    check-cast v18, Ljava/lang/Integer;

    .line 936
    .line 937
    const/16 v19, 0x0

    .line 938
    .line 939
    const/16 v20, 0x0

    .line 940
    .line 941
    const/16 v21, 0x0

    .line 942
    .line 943
    const/16 v22, 0x1d

    .line 944
    .line 945
    const/16 v23, 0x0

    .line 946
    .line 947
    move-object/from16 v16, v2

    .line 948
    .line 949
    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 950
    .line 951
    .line 952
    invoke-direct {v7, v1, v2}, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/keyguard/bouncer/shared/model/Message;Lcom/android/systemui/keyguard/bouncer/shared/model/Message;)V

    .line 953
    .line 954
    .line 955
    :cond_42
    return-object v7

    .line 956
    nop

    .line 957
    :pswitch_data_0
    .packed-switch 0x1
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
.end method
