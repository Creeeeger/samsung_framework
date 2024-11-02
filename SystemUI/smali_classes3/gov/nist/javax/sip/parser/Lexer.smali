.class public final Lgov/nist/javax/sip/parser/Lexer;
.super Lgov/nist/core/LexerCore;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final selectLexer(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Ljava/util/Hashtable;

    .line 13
    .line 14
    iput-object v3, v0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 15
    .line 16
    if-nez v3, :cond_5

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/util/Hashtable;

    .line 23
    .line 24
    iput-object v3, v0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    new-instance v3, Ljava/util/Hashtable;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, v0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 34
    .line 35
    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string v3, "method_keywordLexer"

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/16 v4, 0x858

    .line 45
    .line 46
    const/16 v5, 0x803

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const-string v1, "REGISTER"

    .line 51
    .line 52
    const/16 v3, 0x804

    .line 53
    .line 54
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "ACK"

    .line 58
    .line 59
    const/16 v3, 0x806

    .line 60
    .line 61
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "OPTIONS"

    .line 65
    .line 66
    const/16 v3, 0x808

    .line 67
    .line 68
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "BYE"

    .line 72
    .line 73
    const/16 v3, 0x807

    .line 74
    .line 75
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "INVITE"

    .line 79
    .line 80
    const/16 v3, 0x805

    .line 81
    .line 82
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "sip"

    .line 86
    .line 87
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "sips"

    .line 91
    .line 92
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "SUBSCRIBE"

    .line 96
    .line 97
    const/16 v3, 0x835

    .line 98
    .line 99
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "NOTIFY"

    .line 103
    .line 104
    const/16 v3, 0x836

    .line 105
    .line 106
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "MESSAGE"

    .line 110
    .line 111
    const/16 v3, 0x846

    .line 112
    .line 113
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "PUBLISH"

    .line 117
    .line 118
    const/16 v3, 0x843

    .line 119
    .line 120
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_1
    const-string v3, "command_keywordLexer"

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    const-string v1, "Error-Info"

    .line 134
    .line 135
    const/16 v3, 0x80a

    .line 136
    .line 137
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v1, "Allow-Events"

    .line 141
    .line 142
    const/16 v3, 0x841

    .line 143
    .line 144
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "Authentication-Info"

    .line 148
    .line 149
    const/16 v4, 0x840

    .line 150
    .line 151
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v1, "Event"

    .line 155
    .line 156
    const/16 v4, 0x83f

    .line 157
    .line 158
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v1, "Min-Expires"

    .line 162
    .line 163
    const/16 v5, 0x83e

    .line 164
    .line 165
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v1, "RSeq"

    .line 169
    .line 170
    const/16 v5, 0x83c

    .line 171
    .line 172
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v1, "RAck"

    .line 176
    .line 177
    const/16 v5, 0x83d

    .line 178
    .line 179
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v1, "Reason"

    .line 183
    .line 184
    const/16 v5, 0x83b

    .line 185
    .line 186
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v1, "Reply-To"

    .line 190
    .line 191
    const/16 v5, 0x83a

    .line 192
    .line 193
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "Subscription-State"

    .line 197
    .line 198
    const/16 v5, 0x838

    .line 199
    .line 200
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "Timestamp"

    .line 204
    .line 205
    const/16 v5, 0x837

    .line 206
    .line 207
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "In-Reply-To"

    .line 211
    .line 212
    const/16 v5, 0x80b

    .line 213
    .line 214
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v1, "MIME-Version"

    .line 218
    .line 219
    const/16 v5, 0x80c

    .line 220
    .line 221
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v1, "Alert-Info"

    .line 225
    .line 226
    const/16 v5, 0x80d

    .line 227
    .line 228
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v1, "From"

    .line 232
    .line 233
    const/16 v5, 0x80e

    .line 234
    .line 235
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v1, "To"

    .line 239
    .line 240
    const/16 v6, 0x80f

    .line 241
    .line 242
    invoke-virtual {v0, v6, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const-string v1, "Refer-To"

    .line 246
    .line 247
    const/16 v7, 0x842

    .line 248
    .line 249
    invoke-virtual {v0, v7, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v1, "Via"

    .line 253
    .line 254
    const/16 v8, 0x810

    .line 255
    .line 256
    invoke-virtual {v0, v8, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v1, "User-Agent"

    .line 260
    .line 261
    const/16 v9, 0x811

    .line 262
    .line 263
    invoke-virtual {v0, v9, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "Server"

    .line 267
    .line 268
    const/16 v9, 0x812

    .line 269
    .line 270
    invoke-virtual {v0, v9, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string v1, "Accept-Encoding"

    .line 274
    .line 275
    const/16 v9, 0x813

    .line 276
    .line 277
    invoke-virtual {v0, v9, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v1, "Accept"

    .line 281
    .line 282
    const/16 v9, 0x814

    .line 283
    .line 284
    invoke-virtual {v0, v9, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string v1, "Allow"

    .line 288
    .line 289
    const/16 v10, 0x815

    .line 290
    .line 291
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string v1, "Route"

    .line 295
    .line 296
    const/16 v10, 0x816

    .line 297
    .line 298
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v1, "Authorization"

    .line 302
    .line 303
    const/16 v10, 0x817

    .line 304
    .line 305
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v1, "Proxy-Authorization"

    .line 309
    .line 310
    const/16 v10, 0x818

    .line 311
    .line 312
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v1, "Retry-After"

    .line 316
    .line 317
    const/16 v10, 0x819

    .line 318
    .line 319
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v1, "Proxy-Require"

    .line 323
    .line 324
    const/16 v10, 0x81a

    .line 325
    .line 326
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v1, "Content-Language"

    .line 330
    .line 331
    const/16 v10, 0x81b

    .line 332
    .line 333
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const-string v1, "Unsupported"

    .line 337
    .line 338
    const/16 v10, 0x81c

    .line 339
    .line 340
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string v1, "Supported"

    .line 344
    .line 345
    invoke-virtual {v0, v9, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v1, "Warning"

    .line 349
    .line 350
    const/16 v10, 0x81e

    .line 351
    .line 352
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    const-string v1, "Max-Forwards"

    .line 356
    .line 357
    const/16 v10, 0x81f

    .line 358
    .line 359
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v1, "Date"

    .line 363
    .line 364
    const/16 v10, 0x820

    .line 365
    .line 366
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v1, "Priority"

    .line 370
    .line 371
    const/16 v10, 0x821

    .line 372
    .line 373
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v1, "Proxy-Authenticate"

    .line 377
    .line 378
    const/16 v10, 0x822

    .line 379
    .line 380
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v1, "Content-Encoding"

    .line 384
    .line 385
    const/16 v10, 0x823

    .line 386
    .line 387
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const-string v1, "Content-Length"

    .line 391
    .line 392
    const/16 v11, 0x824

    .line 393
    .line 394
    invoke-virtual {v0, v11, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v1, "Subject"

    .line 398
    .line 399
    const/16 v12, 0x825

    .line 400
    .line 401
    invoke-virtual {v0, v12, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string v1, "Content-Type"

    .line 405
    .line 406
    const/16 v13, 0x826

    .line 407
    .line 408
    invoke-virtual {v0, v13, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v1, "Contact"

    .line 412
    .line 413
    const/16 v14, 0x827

    .line 414
    .line 415
    invoke-virtual {v0, v14, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string v1, "Call-ID"

    .line 419
    .line 420
    const/16 v15, 0x828

    .line 421
    .line 422
    invoke-virtual {v0, v15, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string v1, "Require"

    .line 426
    .line 427
    const/16 v4, 0x829

    .line 428
    .line 429
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string v1, "Expires"

    .line 433
    .line 434
    const/16 v4, 0x82a

    .line 435
    .line 436
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string v1, "Record-Route"

    .line 440
    .line 441
    const/16 v4, 0x82c

    .line 442
    .line 443
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v1, "Organization"

    .line 447
    .line 448
    const/16 v4, 0x82d

    .line 449
    .line 450
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const-string v1, "CSeq"

    .line 454
    .line 455
    const/16 v4, 0x82e

    .line 456
    .line 457
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v1, "Accept-Language"

    .line 461
    .line 462
    const/16 v4, 0x82f

    .line 463
    .line 464
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v1, "WWW-Authenticate"

    .line 468
    .line 469
    const/16 v4, 0x830

    .line 470
    .line 471
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const-string v1, "Call-Info"

    .line 475
    .line 476
    const/16 v4, 0x833

    .line 477
    .line 478
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    const-string v1, "Content-Disposition"

    .line 482
    .line 483
    const/16 v4, 0x834

    .line 484
    .line 485
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    const-string v1, "K"

    .line 489
    .line 490
    invoke-virtual {v0, v9, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    const-string v1, "C"

    .line 494
    .line 495
    invoke-virtual {v0, v13, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string v1, "E"

    .line 499
    .line 500
    invoke-virtual {v0, v10, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 501
    .line 502
    .line 503
    const-string v1, "F"

    .line 504
    .line 505
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    const-string v1, "I"

    .line 509
    .line 510
    invoke-virtual {v0, v15, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const-string v1, "M"

    .line 514
    .line 515
    invoke-virtual {v0, v14, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const-string v1, "L"

    .line 519
    .line 520
    invoke-virtual {v0, v11, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const-string v1, "S"

    .line 524
    .line 525
    invoke-virtual {v0, v12, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    const-string v1, "T"

    .line 529
    .line 530
    invoke-virtual {v0, v6, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 531
    .line 532
    .line 533
    const-string v1, "U"

    .line 534
    .line 535
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    const-string v1, "V"

    .line 539
    .line 540
    invoke-virtual {v0, v8, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 541
    .line 542
    .line 543
    const-string v1, "R"

    .line 544
    .line 545
    invoke-virtual {v0, v7, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 546
    .line 547
    .line 548
    const-string v1, "O"

    .line 549
    .line 550
    const/16 v3, 0x83f

    .line 551
    .line 552
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string v1, "X"

    .line 556
    .line 557
    const/16 v3, 0x855

    .line 558
    .line 559
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 560
    .line 561
    .line 562
    const-string v1, "SIP-ETag"

    .line 563
    .line 564
    const/16 v4, 0x844

    .line 565
    .line 566
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    const-string v1, "SIP-If-Match"

    .line 570
    .line 571
    const/16 v4, 0x845

    .line 572
    .line 573
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 574
    .line 575
    .line 576
    const-string v1, "Session-Expires"

    .line 577
    .line 578
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 579
    .line 580
    .line 581
    const-string v1, "Min-SE"

    .line 582
    .line 583
    const/16 v3, 0x856

    .line 584
    .line 585
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 586
    .line 587
    .line 588
    const-string v1, "Referred-By"

    .line 589
    .line 590
    const/16 v3, 0x854

    .line 591
    .line 592
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    const-string v1, "Replaces"

    .line 596
    .line 597
    const/16 v3, 0x857

    .line 598
    .line 599
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 600
    .line 601
    .line 602
    const-string v1, "Join"

    .line 603
    .line 604
    const/16 v3, 0x85c

    .line 605
    .line 606
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const-string v1, "Path"

    .line 610
    .line 611
    const/16 v3, 0x847

    .line 612
    .line 613
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 614
    .line 615
    .line 616
    const-string v1, "Service-Route"

    .line 617
    .line 618
    const/16 v3, 0x848

    .line 619
    .line 620
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 621
    .line 622
    .line 623
    const-string v1, "P-Asserted-Identity"

    .line 624
    .line 625
    const/16 v3, 0x849

    .line 626
    .line 627
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 628
    .line 629
    .line 630
    const-string v1, "P-Preferred-Identity"

    .line 631
    .line 632
    const/16 v3, 0x84a

    .line 633
    .line 634
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 635
    .line 636
    .line 637
    const-string v1, "Privacy"

    .line 638
    .line 639
    const/16 v3, 0x84e

    .line 640
    .line 641
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string v1, "P-Called-Party-ID"

    .line 645
    .line 646
    const/16 v3, 0x850

    .line 647
    .line 648
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 649
    .line 650
    .line 651
    const-string v1, "P-Associated-URI"

    .line 652
    .line 653
    const/16 v3, 0x851

    .line 654
    .line 655
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 656
    .line 657
    .line 658
    const-string v1, "P-Visited-Network-ID"

    .line 659
    .line 660
    const/16 v3, 0x84b

    .line 661
    .line 662
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 663
    .line 664
    .line 665
    const-string v1, "P-Charging-Function-Addresses"

    .line 666
    .line 667
    const/16 v3, 0x84c

    .line 668
    .line 669
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 670
    .line 671
    .line 672
    const-string v1, "P-Charging-Vector"

    .line 673
    .line 674
    const/16 v3, 0x84d

    .line 675
    .line 676
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 677
    .line 678
    .line 679
    const-string v1, "P-Access-Network-Info"

    .line 680
    .line 681
    const/16 v3, 0x84f

    .line 682
    .line 683
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 684
    .line 685
    .line 686
    const-string v1, "P-Media-Authorization"

    .line 687
    .line 688
    const/16 v3, 0x852

    .line 689
    .line 690
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 691
    .line 692
    .line 693
    const-string v1, "Security-Server"

    .line 694
    .line 695
    const/16 v3, 0x859

    .line 696
    .line 697
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 698
    .line 699
    .line 700
    const-string v1, "Security-Verify"

    .line 701
    .line 702
    const/16 v3, 0x85b

    .line 703
    .line 704
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 705
    .line 706
    .line 707
    const-string v1, "Security-Client"

    .line 708
    .line 709
    const/16 v3, 0x85a

    .line 710
    .line 711
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 712
    .line 713
    .line 714
    const-string v1, "P-User-Database"

    .line 715
    .line 716
    const/16 v3, 0x85d    # 3.0E-42f

    .line 717
    .line 718
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 719
    .line 720
    .line 721
    const-string v1, "P-Profile-Key"

    .line 722
    .line 723
    const/16 v3, 0x85e

    .line 724
    .line 725
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 726
    .line 727
    .line 728
    const-string v1, "P-Served-User"

    .line 729
    .line 730
    const/16 v3, 0x85f

    .line 731
    .line 732
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 733
    .line 734
    .line 735
    const-string v1, "P-Preferred-Service"

    .line 736
    .line 737
    const/16 v3, 0x860

    .line 738
    .line 739
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 740
    .line 741
    .line 742
    const-string v1, "P-Asserted-Service"

    .line 743
    .line 744
    const/16 v3, 0x861

    .line 745
    .line 746
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 747
    .line 748
    .line 749
    const-string v1, "References"

    .line 750
    .line 751
    const/16 v3, 0x862

    .line 752
    .line 753
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 754
    .line 755
    .line 756
    goto :goto_0

    .line 757
    :cond_2
    const-string v3, "status_lineLexer"

    .line 758
    .line 759
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    if-eqz v3, :cond_3

    .line 764
    .line 765
    const-string v1, "sip"

    .line 766
    .line 767
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto :goto_0

    .line 771
    :cond_3
    const-string v3, "request_lineLexer"

    .line 772
    .line 773
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    if-eqz v3, :cond_4

    .line 778
    .line 779
    const-string v1, "sip"

    .line 780
    .line 781
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 782
    .line 783
    .line 784
    goto :goto_0

    .line 785
    :cond_4
    const-string v3, "sip_urlLexer"

    .line 786
    .line 787
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_5

    .line 792
    .line 793
    const-string v1, "tel"

    .line 794
    .line 795
    const/16 v3, 0x839

    .line 796
    .line 797
    invoke-virtual {v0, v3, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 798
    .line 799
    .line 800
    const-string v1, "sip"

    .line 801
    .line 802
    invoke-virtual {v0, v5, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 803
    .line 804
    .line 805
    const-string v1, "sips"

    .line 806
    .line 807
    invoke-virtual {v0, v4, v1}, Lgov/nist/core/LexerCore;->addKeyword(ILjava/lang/String;)V

    .line 808
    .line 809
    .line 810
    :cond_5
    :goto_0
    monitor-exit v2

    .line 811
    return-void

    .line 812
    :catchall_0
    move-exception v0

    .line 813
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    throw v0
.end method
