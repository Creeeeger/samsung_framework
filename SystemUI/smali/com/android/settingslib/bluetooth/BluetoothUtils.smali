.class public final Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BD_ROTATE_LEFT:[Ljava/lang/String;

.field public static final BD_ROTATE_RIGHT:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static mDexQuickPannelOn:Z

.field public static final mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

.field public static mQuickPannelOn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    .line 6
    .line 7
    const/16 v0, 0x100

    .line 8
    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "00"

    .line 13
    .line 14
    aput-object v3, v1, v2

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const-string v5, "02"

    .line 18
    .line 19
    aput-object v5, v1, v4

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    const-string v7, "04"

    .line 23
    .line 24
    aput-object v7, v1, v6

    .line 25
    .line 26
    const/4 v8, 0x3

    .line 27
    const-string v9, "06"

    .line 28
    .line 29
    aput-object v9, v1, v8

    .line 30
    .line 31
    const/4 v10, 0x4

    .line 32
    const-string v11, "08"

    .line 33
    .line 34
    aput-object v11, v1, v10

    .line 35
    .line 36
    const/4 v12, 0x5

    .line 37
    const-string v13, "0A"

    .line 38
    .line 39
    aput-object v13, v1, v12

    .line 40
    .line 41
    const/4 v14, 0x6

    .line 42
    const-string v15, "0C"

    .line 43
    .line 44
    aput-object v15, v1, v14

    .line 45
    .line 46
    const/16 v16, 0x7

    .line 47
    .line 48
    const-string v17, "0E"

    .line 49
    .line 50
    aput-object v17, v1, v16

    .line 51
    .line 52
    const/16 v18, 0x8

    .line 53
    .line 54
    const-string v19, "10"

    .line 55
    .line 56
    aput-object v19, v1, v18

    .line 57
    .line 58
    const/16 v20, 0x9

    .line 59
    .line 60
    const-string v21, "12"

    .line 61
    .line 62
    aput-object v21, v1, v20

    .line 63
    .line 64
    const-string v22, "14"

    .line 65
    .line 66
    const/16 v23, 0xa

    .line 67
    .line 68
    aput-object v22, v1, v23

    .line 69
    .line 70
    const/16 v22, 0xb

    .line 71
    .line 72
    const-string v24, "16"

    .line 73
    .line 74
    aput-object v24, v1, v22

    .line 75
    .line 76
    const/16 v22, 0xc

    .line 77
    .line 78
    const-string v24, "18"

    .line 79
    .line 80
    aput-object v24, v1, v22

    .line 81
    .line 82
    const/16 v22, 0xd

    .line 83
    .line 84
    const-string v24, "1A"

    .line 85
    .line 86
    aput-object v24, v1, v22

    .line 87
    .line 88
    const/16 v22, 0xe

    .line 89
    .line 90
    const-string v24, "1C"

    .line 91
    .line 92
    aput-object v24, v1, v22

    .line 93
    .line 94
    const/16 v22, 0xf

    .line 95
    .line 96
    const-string v24, "1E"

    .line 97
    .line 98
    aput-object v24, v1, v22

    .line 99
    .line 100
    const/16 v22, 0x10

    .line 101
    .line 102
    const-string v24, "20"

    .line 103
    .line 104
    aput-object v24, v1, v22

    .line 105
    .line 106
    const/16 v22, 0x11

    .line 107
    .line 108
    const-string v24, "22"

    .line 109
    .line 110
    aput-object v24, v1, v22

    .line 111
    .line 112
    const/16 v22, 0x12

    .line 113
    .line 114
    const-string v24, "24"

    .line 115
    .line 116
    aput-object v24, v1, v22

    .line 117
    .line 118
    const/16 v22, 0x13

    .line 119
    .line 120
    const-string v24, "26"

    .line 121
    .line 122
    aput-object v24, v1, v22

    .line 123
    .line 124
    const/16 v22, 0x14

    .line 125
    .line 126
    const-string v24, "28"

    .line 127
    .line 128
    aput-object v24, v1, v22

    .line 129
    .line 130
    const/16 v22, 0x15

    .line 131
    .line 132
    const-string v24, "2A"

    .line 133
    .line 134
    aput-object v24, v1, v22

    .line 135
    .line 136
    const/16 v22, 0x16

    .line 137
    .line 138
    const-string v24, "2C"

    .line 139
    .line 140
    aput-object v24, v1, v22

    .line 141
    .line 142
    const/16 v22, 0x17

    .line 143
    .line 144
    const-string v24, "2E"

    .line 145
    .line 146
    aput-object v24, v1, v22

    .line 147
    .line 148
    const/16 v22, 0x18

    .line 149
    .line 150
    const-string v24, "30"

    .line 151
    .line 152
    aput-object v24, v1, v22

    .line 153
    .line 154
    const/16 v22, 0x19

    .line 155
    .line 156
    const-string v24, "32"

    .line 157
    .line 158
    aput-object v24, v1, v22

    .line 159
    .line 160
    const/16 v22, 0x1a

    .line 161
    .line 162
    const-string v24, "34"

    .line 163
    .line 164
    aput-object v24, v1, v22

    .line 165
    .line 166
    const/16 v22, 0x1b

    .line 167
    .line 168
    const-string v24, "36"

    .line 169
    .line 170
    aput-object v24, v1, v22

    .line 171
    .line 172
    const/16 v22, 0x1c

    .line 173
    .line 174
    const-string v24, "38"

    .line 175
    .line 176
    aput-object v24, v1, v22

    .line 177
    .line 178
    const/16 v22, 0x1d

    .line 179
    .line 180
    const-string v24, "3A"

    .line 181
    .line 182
    aput-object v24, v1, v22

    .line 183
    .line 184
    const/16 v22, 0x1e

    .line 185
    .line 186
    const-string v24, "3C"

    .line 187
    .line 188
    aput-object v24, v1, v22

    .line 189
    .line 190
    const/16 v22, 0x1f

    .line 191
    .line 192
    const-string v24, "3E"

    .line 193
    .line 194
    aput-object v24, v1, v22

    .line 195
    .line 196
    const/16 v22, 0x20

    .line 197
    .line 198
    const-string v24, "40"

    .line 199
    .line 200
    aput-object v24, v1, v22

    .line 201
    .line 202
    const/16 v22, 0x21

    .line 203
    .line 204
    const-string v24, "42"

    .line 205
    .line 206
    aput-object v24, v1, v22

    .line 207
    .line 208
    const/16 v22, 0x22

    .line 209
    .line 210
    const-string v24, "44"

    .line 211
    .line 212
    aput-object v24, v1, v22

    .line 213
    .line 214
    const/16 v22, 0x23

    .line 215
    .line 216
    const-string v24, "46"

    .line 217
    .line 218
    aput-object v24, v1, v22

    .line 219
    .line 220
    const/16 v22, 0x24

    .line 221
    .line 222
    const-string v24, "48"

    .line 223
    .line 224
    aput-object v24, v1, v22

    .line 225
    .line 226
    const/16 v22, 0x25

    .line 227
    .line 228
    const-string v24, "4A"

    .line 229
    .line 230
    aput-object v24, v1, v22

    .line 231
    .line 232
    const/16 v22, 0x26

    .line 233
    .line 234
    const-string v24, "4C"

    .line 235
    .line 236
    aput-object v24, v1, v22

    .line 237
    .line 238
    const/16 v22, 0x27

    .line 239
    .line 240
    const-string v24, "4E"

    .line 241
    .line 242
    aput-object v24, v1, v22

    .line 243
    .line 244
    const/16 v22, 0x28

    .line 245
    .line 246
    const-string v24, "50"

    .line 247
    .line 248
    aput-object v24, v1, v22

    .line 249
    .line 250
    const/16 v22, 0x29

    .line 251
    .line 252
    const-string v24, "52"

    .line 253
    .line 254
    aput-object v24, v1, v22

    .line 255
    .line 256
    const/16 v22, 0x2a

    .line 257
    .line 258
    const-string v24, "54"

    .line 259
    .line 260
    aput-object v24, v1, v22

    .line 261
    .line 262
    const/16 v22, 0x2b

    .line 263
    .line 264
    const-string v24, "56"

    .line 265
    .line 266
    aput-object v24, v1, v22

    .line 267
    .line 268
    const/16 v22, 0x2c

    .line 269
    .line 270
    const-string v24, "58"

    .line 271
    .line 272
    aput-object v24, v1, v22

    .line 273
    .line 274
    const/16 v22, 0x2d

    .line 275
    .line 276
    const-string v24, "5A"

    .line 277
    .line 278
    aput-object v24, v1, v22

    .line 279
    .line 280
    const/16 v22, 0x2e

    .line 281
    .line 282
    const-string v24, "5C"

    .line 283
    .line 284
    aput-object v24, v1, v22

    .line 285
    .line 286
    const/16 v22, 0x2f

    .line 287
    .line 288
    const-string v24, "5E"

    .line 289
    .line 290
    aput-object v24, v1, v22

    .line 291
    .line 292
    const/16 v22, 0x30

    .line 293
    .line 294
    const-string v24, "60"

    .line 295
    .line 296
    aput-object v24, v1, v22

    .line 297
    .line 298
    const/16 v22, 0x31

    .line 299
    .line 300
    const-string v24, "62"

    .line 301
    .line 302
    aput-object v24, v1, v22

    .line 303
    .line 304
    const/16 v22, 0x32

    .line 305
    .line 306
    const-string v24, "64"

    .line 307
    .line 308
    aput-object v24, v1, v22

    .line 309
    .line 310
    const/16 v22, 0x33

    .line 311
    .line 312
    const-string v24, "66"

    .line 313
    .line 314
    aput-object v24, v1, v22

    .line 315
    .line 316
    const/16 v22, 0x34

    .line 317
    .line 318
    const-string v24, "68"

    .line 319
    .line 320
    aput-object v24, v1, v22

    .line 321
    .line 322
    const/16 v22, 0x35

    .line 323
    .line 324
    const-string v24, "6A"

    .line 325
    .line 326
    aput-object v24, v1, v22

    .line 327
    .line 328
    const/16 v22, 0x36

    .line 329
    .line 330
    const-string v24, "6C"

    .line 331
    .line 332
    aput-object v24, v1, v22

    .line 333
    .line 334
    const/16 v22, 0x37

    .line 335
    .line 336
    const-string v24, "6E"

    .line 337
    .line 338
    aput-object v24, v1, v22

    .line 339
    .line 340
    const/16 v22, 0x38

    .line 341
    .line 342
    const-string v24, "70"

    .line 343
    .line 344
    aput-object v24, v1, v22

    .line 345
    .line 346
    const/16 v22, 0x39

    .line 347
    .line 348
    const-string v24, "72"

    .line 349
    .line 350
    aput-object v24, v1, v22

    .line 351
    .line 352
    const/16 v22, 0x3a

    .line 353
    .line 354
    const-string v24, "74"

    .line 355
    .line 356
    aput-object v24, v1, v22

    .line 357
    .line 358
    const/16 v22, 0x3b

    .line 359
    .line 360
    const-string v24, "76"

    .line 361
    .line 362
    aput-object v24, v1, v22

    .line 363
    .line 364
    const/16 v22, 0x3c

    .line 365
    .line 366
    const-string v24, "78"

    .line 367
    .line 368
    aput-object v24, v1, v22

    .line 369
    .line 370
    const/16 v22, 0x3d

    .line 371
    .line 372
    const-string v24, "7A"

    .line 373
    .line 374
    aput-object v24, v1, v22

    .line 375
    .line 376
    const/16 v22, 0x3e

    .line 377
    .line 378
    const-string v24, "7C"

    .line 379
    .line 380
    aput-object v24, v1, v22

    .line 381
    .line 382
    const/16 v22, 0x3f

    .line 383
    .line 384
    const-string v24, "7E"

    .line 385
    .line 386
    aput-object v24, v1, v22

    .line 387
    .line 388
    const/16 v22, 0x40

    .line 389
    .line 390
    const-string v24, "80"

    .line 391
    .line 392
    aput-object v24, v1, v22

    .line 393
    .line 394
    const/16 v22, 0x41

    .line 395
    .line 396
    const-string v24, "82"

    .line 397
    .line 398
    aput-object v24, v1, v22

    .line 399
    .line 400
    const/16 v22, 0x42

    .line 401
    .line 402
    const-string v24, "84"

    .line 403
    .line 404
    aput-object v24, v1, v22

    .line 405
    .line 406
    const/16 v22, 0x43

    .line 407
    .line 408
    const-string v24, "86"

    .line 409
    .line 410
    aput-object v24, v1, v22

    .line 411
    .line 412
    const/16 v22, 0x44

    .line 413
    .line 414
    const-string v24, "88"

    .line 415
    .line 416
    aput-object v24, v1, v22

    .line 417
    .line 418
    const/16 v22, 0x45

    .line 419
    .line 420
    const-string v24, "8A"

    .line 421
    .line 422
    aput-object v24, v1, v22

    .line 423
    .line 424
    const/16 v22, 0x46

    .line 425
    .line 426
    const-string v24, "8C"

    .line 427
    .line 428
    aput-object v24, v1, v22

    .line 429
    .line 430
    const/16 v22, 0x47

    .line 431
    .line 432
    const-string v24, "8E"

    .line 433
    .line 434
    aput-object v24, v1, v22

    .line 435
    .line 436
    const/16 v22, 0x48

    .line 437
    .line 438
    const-string v24, "90"

    .line 439
    .line 440
    aput-object v24, v1, v22

    .line 441
    .line 442
    const/16 v22, 0x49

    .line 443
    .line 444
    const-string v24, "92"

    .line 445
    .line 446
    aput-object v24, v1, v22

    .line 447
    .line 448
    const/16 v22, 0x4a

    .line 449
    .line 450
    const-string v24, "94"

    .line 451
    .line 452
    aput-object v24, v1, v22

    .line 453
    .line 454
    const/16 v22, 0x4b

    .line 455
    .line 456
    const-string v24, "96"

    .line 457
    .line 458
    aput-object v24, v1, v22

    .line 459
    .line 460
    const/16 v22, 0x4c

    .line 461
    .line 462
    const-string v24, "98"

    .line 463
    .line 464
    aput-object v24, v1, v22

    .line 465
    .line 466
    const/16 v22, 0x4d

    .line 467
    .line 468
    const-string v24, "9A"

    .line 469
    .line 470
    aput-object v24, v1, v22

    .line 471
    .line 472
    const/16 v22, 0x4e

    .line 473
    .line 474
    const-string v24, "9C"

    .line 475
    .line 476
    aput-object v24, v1, v22

    .line 477
    .line 478
    const/16 v22, 0x4f

    .line 479
    .line 480
    const-string v24, "9E"

    .line 481
    .line 482
    aput-object v24, v1, v22

    .line 483
    .line 484
    const/16 v22, 0x50

    .line 485
    .line 486
    const-string v24, "A0"

    .line 487
    .line 488
    aput-object v24, v1, v22

    .line 489
    .line 490
    const/16 v22, 0x51

    .line 491
    .line 492
    const-string v24, "A2"

    .line 493
    .line 494
    aput-object v24, v1, v22

    .line 495
    .line 496
    const/16 v22, 0x52

    .line 497
    .line 498
    const-string v24, "A4"

    .line 499
    .line 500
    aput-object v24, v1, v22

    .line 501
    .line 502
    const/16 v22, 0x53

    .line 503
    .line 504
    const-string v24, "A6"

    .line 505
    .line 506
    aput-object v24, v1, v22

    .line 507
    .line 508
    const/16 v22, 0x54

    .line 509
    .line 510
    const-string v24, "A8"

    .line 511
    .line 512
    aput-object v24, v1, v22

    .line 513
    .line 514
    const/16 v22, 0x55

    .line 515
    .line 516
    const-string v24, "AA"

    .line 517
    .line 518
    aput-object v24, v1, v22

    .line 519
    .line 520
    const/16 v22, 0x56

    .line 521
    .line 522
    const-string v24, "AC"

    .line 523
    .line 524
    aput-object v24, v1, v22

    .line 525
    .line 526
    const/16 v22, 0x57

    .line 527
    .line 528
    const-string v24, "AE"

    .line 529
    .line 530
    aput-object v24, v1, v22

    .line 531
    .line 532
    const/16 v22, 0x58

    .line 533
    .line 534
    const-string v24, "B0"

    .line 535
    .line 536
    aput-object v24, v1, v22

    .line 537
    .line 538
    const/16 v22, 0x59

    .line 539
    .line 540
    const-string v24, "B2"

    .line 541
    .line 542
    aput-object v24, v1, v22

    .line 543
    .line 544
    const/16 v22, 0x5a

    .line 545
    .line 546
    const-string v24, "B4"

    .line 547
    .line 548
    aput-object v24, v1, v22

    .line 549
    .line 550
    const/16 v22, 0x5b

    .line 551
    .line 552
    const-string v24, "B6"

    .line 553
    .line 554
    aput-object v24, v1, v22

    .line 555
    .line 556
    const/16 v22, 0x5c

    .line 557
    .line 558
    const-string v24, "B8"

    .line 559
    .line 560
    aput-object v24, v1, v22

    .line 561
    .line 562
    const/16 v22, 0x5d

    .line 563
    .line 564
    const-string v24, "BA"

    .line 565
    .line 566
    aput-object v24, v1, v22

    .line 567
    .line 568
    const/16 v22, 0x5e

    .line 569
    .line 570
    const-string v24, "BC"

    .line 571
    .line 572
    aput-object v24, v1, v22

    .line 573
    .line 574
    const/16 v22, 0x5f

    .line 575
    .line 576
    const-string v24, "BE"

    .line 577
    .line 578
    aput-object v24, v1, v22

    .line 579
    .line 580
    const/16 v22, 0x60

    .line 581
    .line 582
    const-string v24, "C0"

    .line 583
    .line 584
    aput-object v24, v1, v22

    .line 585
    .line 586
    const/16 v22, 0x61

    .line 587
    .line 588
    const-string v24, "C2"

    .line 589
    .line 590
    aput-object v24, v1, v22

    .line 591
    .line 592
    const/16 v22, 0x62

    .line 593
    .line 594
    const-string v24, "C4"

    .line 595
    .line 596
    aput-object v24, v1, v22

    .line 597
    .line 598
    const/16 v22, 0x63

    .line 599
    .line 600
    const-string v24, "C6"

    .line 601
    .line 602
    aput-object v24, v1, v22

    .line 603
    .line 604
    const/16 v22, 0x64

    .line 605
    .line 606
    const-string v24, "C8"

    .line 607
    .line 608
    aput-object v24, v1, v22

    .line 609
    .line 610
    const/16 v22, 0x65

    .line 611
    .line 612
    const-string v24, "CA"

    .line 613
    .line 614
    aput-object v24, v1, v22

    .line 615
    .line 616
    const/16 v22, 0x66

    .line 617
    .line 618
    const-string v24, "CC"

    .line 619
    .line 620
    aput-object v24, v1, v22

    .line 621
    .line 622
    const/16 v22, 0x67

    .line 623
    .line 624
    const-string v24, "CE"

    .line 625
    .line 626
    aput-object v24, v1, v22

    .line 627
    .line 628
    const/16 v22, 0x68

    .line 629
    .line 630
    const-string v24, "D0"

    .line 631
    .line 632
    aput-object v24, v1, v22

    .line 633
    .line 634
    const/16 v22, 0x69

    .line 635
    .line 636
    const-string v24, "D2"

    .line 637
    .line 638
    aput-object v24, v1, v22

    .line 639
    .line 640
    const/16 v22, 0x6a

    .line 641
    .line 642
    const-string v24, "D4"

    .line 643
    .line 644
    aput-object v24, v1, v22

    .line 645
    .line 646
    const/16 v22, 0x6b

    .line 647
    .line 648
    const-string v24, "D6"

    .line 649
    .line 650
    aput-object v24, v1, v22

    .line 651
    .line 652
    const/16 v22, 0x6c

    .line 653
    .line 654
    const-string v24, "D8"

    .line 655
    .line 656
    aput-object v24, v1, v22

    .line 657
    .line 658
    const/16 v22, 0x6d

    .line 659
    .line 660
    const-string v24, "DA"

    .line 661
    .line 662
    aput-object v24, v1, v22

    .line 663
    .line 664
    const/16 v22, 0x6e

    .line 665
    .line 666
    const-string v24, "DC"

    .line 667
    .line 668
    aput-object v24, v1, v22

    .line 669
    .line 670
    const/16 v22, 0x6f

    .line 671
    .line 672
    const-string v24, "DE"

    .line 673
    .line 674
    aput-object v24, v1, v22

    .line 675
    .line 676
    const/16 v22, 0x70

    .line 677
    .line 678
    const-string v24, "E0"

    .line 679
    .line 680
    aput-object v24, v1, v22

    .line 681
    .line 682
    const/16 v22, 0x71

    .line 683
    .line 684
    const-string v24, "E2"

    .line 685
    .line 686
    aput-object v24, v1, v22

    .line 687
    .line 688
    const/16 v22, 0x72

    .line 689
    .line 690
    const-string v24, "E4"

    .line 691
    .line 692
    aput-object v24, v1, v22

    .line 693
    .line 694
    const/16 v22, 0x73

    .line 695
    .line 696
    const-string v24, "E6"

    .line 697
    .line 698
    aput-object v24, v1, v22

    .line 699
    .line 700
    const/16 v22, 0x74

    .line 701
    .line 702
    const-string v24, "E8"

    .line 703
    .line 704
    aput-object v24, v1, v22

    .line 705
    .line 706
    const/16 v22, 0x75

    .line 707
    .line 708
    const-string v24, "EA"

    .line 709
    .line 710
    aput-object v24, v1, v22

    .line 711
    .line 712
    const/16 v22, 0x76

    .line 713
    .line 714
    const-string v24, "EC"

    .line 715
    .line 716
    aput-object v24, v1, v22

    .line 717
    .line 718
    const/16 v22, 0x77

    .line 719
    .line 720
    const-string v24, "EE"

    .line 721
    .line 722
    aput-object v24, v1, v22

    .line 723
    .line 724
    const/16 v22, 0x78

    .line 725
    .line 726
    const-string v24, "F0"

    .line 727
    .line 728
    aput-object v24, v1, v22

    .line 729
    .line 730
    const/16 v22, 0x79

    .line 731
    .line 732
    const-string v24, "F2"

    .line 733
    .line 734
    aput-object v24, v1, v22

    .line 735
    .line 736
    const/16 v22, 0x7a

    .line 737
    .line 738
    const-string v24, "F4"

    .line 739
    .line 740
    aput-object v24, v1, v22

    .line 741
    .line 742
    const/16 v22, 0x7b

    .line 743
    .line 744
    const-string v24, "F6"

    .line 745
    .line 746
    aput-object v24, v1, v22

    .line 747
    .line 748
    const/16 v22, 0x7c

    .line 749
    .line 750
    const-string v24, "F8"

    .line 751
    .line 752
    aput-object v24, v1, v22

    .line 753
    .line 754
    const/16 v22, 0x7d

    .line 755
    .line 756
    const-string v24, "FA"

    .line 757
    .line 758
    aput-object v24, v1, v22

    .line 759
    .line 760
    const/16 v22, 0x7e

    .line 761
    .line 762
    const-string v24, "FC"

    .line 763
    .line 764
    aput-object v24, v1, v22

    .line 765
    .line 766
    const/16 v22, 0x7f

    .line 767
    .line 768
    const-string v24, "FE"

    .line 769
    .line 770
    aput-object v24, v1, v22

    .line 771
    .line 772
    const/16 v22, 0x80

    .line 773
    .line 774
    const-string v24, "01"

    .line 775
    .line 776
    aput-object v24, v1, v22

    .line 777
    .line 778
    const/16 v22, 0x81

    .line 779
    .line 780
    const-string v24, "03"

    .line 781
    .line 782
    aput-object v24, v1, v22

    .line 783
    .line 784
    const/16 v22, 0x82

    .line 785
    .line 786
    const-string v24, "05"

    .line 787
    .line 788
    aput-object v24, v1, v22

    .line 789
    .line 790
    const/16 v22, 0x83

    .line 791
    .line 792
    const-string v24, "07"

    .line 793
    .line 794
    aput-object v24, v1, v22

    .line 795
    .line 796
    const/16 v22, 0x84

    .line 797
    .line 798
    const-string v24, "09"

    .line 799
    .line 800
    aput-object v24, v1, v22

    .line 801
    .line 802
    const/16 v22, 0x85

    .line 803
    .line 804
    const-string v24, "0B"

    .line 805
    .line 806
    aput-object v24, v1, v22

    .line 807
    .line 808
    const/16 v22, 0x86

    .line 809
    .line 810
    const-string v24, "0D"

    .line 811
    .line 812
    aput-object v24, v1, v22

    .line 813
    .line 814
    const/16 v22, 0x87

    .line 815
    .line 816
    const-string v24, "0F"

    .line 817
    .line 818
    aput-object v24, v1, v22

    .line 819
    .line 820
    const/16 v22, 0x88

    .line 821
    .line 822
    const-string v24, "11"

    .line 823
    .line 824
    aput-object v24, v1, v22

    .line 825
    .line 826
    const/16 v22, 0x89

    .line 827
    .line 828
    const-string v24, "13"

    .line 829
    .line 830
    aput-object v24, v1, v22

    .line 831
    .line 832
    const/16 v22, 0x8a

    .line 833
    .line 834
    const-string v24, "15"

    .line 835
    .line 836
    aput-object v24, v1, v22

    .line 837
    .line 838
    const/16 v22, 0x8b

    .line 839
    .line 840
    const-string v24, "17"

    .line 841
    .line 842
    aput-object v24, v1, v22

    .line 843
    .line 844
    const/16 v22, 0x8c

    .line 845
    .line 846
    const-string v24, "19"

    .line 847
    .line 848
    aput-object v24, v1, v22

    .line 849
    .line 850
    const/16 v22, 0x8d

    .line 851
    .line 852
    const-string v24, "1B"

    .line 853
    .line 854
    aput-object v24, v1, v22

    .line 855
    .line 856
    const/16 v22, 0x8e

    .line 857
    .line 858
    const-string v24, "1D"

    .line 859
    .line 860
    aput-object v24, v1, v22

    .line 861
    .line 862
    const/16 v22, 0x8f

    .line 863
    .line 864
    const-string v24, "1F"

    .line 865
    .line 866
    aput-object v24, v1, v22

    .line 867
    .line 868
    const/16 v22, 0x90

    .line 869
    .line 870
    const-string v24, "21"

    .line 871
    .line 872
    aput-object v24, v1, v22

    .line 873
    .line 874
    const/16 v22, 0x91

    .line 875
    .line 876
    const-string v24, "23"

    .line 877
    .line 878
    aput-object v24, v1, v22

    .line 879
    .line 880
    const/16 v22, 0x92

    .line 881
    .line 882
    const-string v24, "25"

    .line 883
    .line 884
    aput-object v24, v1, v22

    .line 885
    .line 886
    const/16 v22, 0x93

    .line 887
    .line 888
    const-string v24, "27"

    .line 889
    .line 890
    aput-object v24, v1, v22

    .line 891
    .line 892
    const/16 v22, 0x94

    .line 893
    .line 894
    const-string v24, "29"

    .line 895
    .line 896
    aput-object v24, v1, v22

    .line 897
    .line 898
    const/16 v22, 0x95

    .line 899
    .line 900
    const-string v24, "2B"

    .line 901
    .line 902
    aput-object v24, v1, v22

    .line 903
    .line 904
    const/16 v22, 0x96

    .line 905
    .line 906
    const-string v24, "2D"

    .line 907
    .line 908
    aput-object v24, v1, v22

    .line 909
    .line 910
    const/16 v22, 0x97

    .line 911
    .line 912
    const-string v24, "2F"

    .line 913
    .line 914
    aput-object v24, v1, v22

    .line 915
    .line 916
    const/16 v22, 0x98

    .line 917
    .line 918
    const-string v24, "31"

    .line 919
    .line 920
    aput-object v24, v1, v22

    .line 921
    .line 922
    const/16 v22, 0x99

    .line 923
    .line 924
    const-string v24, "33"

    .line 925
    .line 926
    aput-object v24, v1, v22

    .line 927
    .line 928
    const/16 v22, 0x9a

    .line 929
    .line 930
    const-string v24, "35"

    .line 931
    .line 932
    aput-object v24, v1, v22

    .line 933
    .line 934
    const/16 v22, 0x9b

    .line 935
    .line 936
    const-string v24, "37"

    .line 937
    .line 938
    aput-object v24, v1, v22

    .line 939
    .line 940
    const/16 v22, 0x9c

    .line 941
    .line 942
    const-string v24, "39"

    .line 943
    .line 944
    aput-object v24, v1, v22

    .line 945
    .line 946
    const/16 v22, 0x9d

    .line 947
    .line 948
    const-string v24, "3B"

    .line 949
    .line 950
    aput-object v24, v1, v22

    .line 951
    .line 952
    const/16 v22, 0x9e

    .line 953
    .line 954
    const-string v24, "3D"

    .line 955
    .line 956
    aput-object v24, v1, v22

    .line 957
    .line 958
    const/16 v22, 0x9f

    .line 959
    .line 960
    const-string v24, "3F"

    .line 961
    .line 962
    aput-object v24, v1, v22

    .line 963
    .line 964
    const/16 v22, 0xa0

    .line 965
    .line 966
    const-string v24, "41"

    .line 967
    .line 968
    aput-object v24, v1, v22

    .line 969
    .line 970
    const/16 v22, 0xa1

    .line 971
    .line 972
    const-string v24, "43"

    .line 973
    .line 974
    aput-object v24, v1, v22

    .line 975
    .line 976
    const/16 v22, 0xa2

    .line 977
    .line 978
    const-string v24, "45"

    .line 979
    .line 980
    aput-object v24, v1, v22

    .line 981
    .line 982
    const/16 v22, 0xa3

    .line 983
    .line 984
    const-string v24, "47"

    .line 985
    .line 986
    aput-object v24, v1, v22

    .line 987
    .line 988
    const/16 v22, 0xa4

    .line 989
    .line 990
    const-string v24, "49"

    .line 991
    .line 992
    aput-object v24, v1, v22

    .line 993
    .line 994
    const/16 v22, 0xa5

    .line 995
    .line 996
    const-string v24, "4B"

    .line 997
    .line 998
    aput-object v24, v1, v22

    .line 999
    .line 1000
    const/16 v22, 0xa6

    .line 1001
    .line 1002
    const-string v24, "4D"

    .line 1003
    .line 1004
    aput-object v24, v1, v22

    .line 1005
    .line 1006
    const/16 v22, 0xa7

    .line 1007
    .line 1008
    const-string v24, "4F"

    .line 1009
    .line 1010
    aput-object v24, v1, v22

    .line 1011
    .line 1012
    const/16 v22, 0xa8

    .line 1013
    .line 1014
    const-string v24, "51"

    .line 1015
    .line 1016
    aput-object v24, v1, v22

    .line 1017
    .line 1018
    const/16 v22, 0xa9

    .line 1019
    .line 1020
    const-string v24, "53"

    .line 1021
    .line 1022
    aput-object v24, v1, v22

    .line 1023
    .line 1024
    const/16 v22, 0xaa

    .line 1025
    .line 1026
    const-string v24, "55"

    .line 1027
    .line 1028
    aput-object v24, v1, v22

    .line 1029
    .line 1030
    const/16 v22, 0xab

    .line 1031
    .line 1032
    const-string v24, "57"

    .line 1033
    .line 1034
    aput-object v24, v1, v22

    .line 1035
    .line 1036
    const/16 v22, 0xac

    .line 1037
    .line 1038
    const-string v24, "59"

    .line 1039
    .line 1040
    aput-object v24, v1, v22

    .line 1041
    .line 1042
    const/16 v22, 0xad

    .line 1043
    .line 1044
    const-string v24, "5B"

    .line 1045
    .line 1046
    aput-object v24, v1, v22

    .line 1047
    .line 1048
    const/16 v22, 0xae

    .line 1049
    .line 1050
    const-string v24, "5D"

    .line 1051
    .line 1052
    aput-object v24, v1, v22

    .line 1053
    .line 1054
    const/16 v22, 0xaf

    .line 1055
    .line 1056
    const-string v24, "5F"

    .line 1057
    .line 1058
    aput-object v24, v1, v22

    .line 1059
    .line 1060
    const/16 v22, 0xb0

    .line 1061
    .line 1062
    const-string v24, "61"

    .line 1063
    .line 1064
    aput-object v24, v1, v22

    .line 1065
    .line 1066
    const/16 v22, 0xb1

    .line 1067
    .line 1068
    const-string v24, "63"

    .line 1069
    .line 1070
    aput-object v24, v1, v22

    .line 1071
    .line 1072
    const/16 v22, 0xb2

    .line 1073
    .line 1074
    const-string v24, "65"

    .line 1075
    .line 1076
    aput-object v24, v1, v22

    .line 1077
    .line 1078
    const/16 v22, 0xb3

    .line 1079
    .line 1080
    const-string v24, "67"

    .line 1081
    .line 1082
    aput-object v24, v1, v22

    .line 1083
    .line 1084
    const/16 v22, 0xb4

    .line 1085
    .line 1086
    const-string v24, "69"

    .line 1087
    .line 1088
    aput-object v24, v1, v22

    .line 1089
    .line 1090
    const/16 v22, 0xb5

    .line 1091
    .line 1092
    const-string v24, "6B"

    .line 1093
    .line 1094
    aput-object v24, v1, v22

    .line 1095
    .line 1096
    const/16 v22, 0xb6

    .line 1097
    .line 1098
    const-string v24, "6D"

    .line 1099
    .line 1100
    aput-object v24, v1, v22

    .line 1101
    .line 1102
    const/16 v22, 0xb7

    .line 1103
    .line 1104
    const-string v24, "6F"

    .line 1105
    .line 1106
    aput-object v24, v1, v22

    .line 1107
    .line 1108
    const/16 v22, 0xb8

    .line 1109
    .line 1110
    const-string v24, "71"

    .line 1111
    .line 1112
    aput-object v24, v1, v22

    .line 1113
    .line 1114
    const/16 v22, 0xb9

    .line 1115
    .line 1116
    const-string v24, "73"

    .line 1117
    .line 1118
    aput-object v24, v1, v22

    .line 1119
    .line 1120
    const/16 v22, 0xba

    .line 1121
    .line 1122
    const-string v24, "75"

    .line 1123
    .line 1124
    aput-object v24, v1, v22

    .line 1125
    .line 1126
    const/16 v22, 0xbb

    .line 1127
    .line 1128
    const-string v24, "77"

    .line 1129
    .line 1130
    aput-object v24, v1, v22

    .line 1131
    .line 1132
    const/16 v22, 0xbc

    .line 1133
    .line 1134
    const-string v24, "79"

    .line 1135
    .line 1136
    aput-object v24, v1, v22

    .line 1137
    .line 1138
    const/16 v22, 0xbd

    .line 1139
    .line 1140
    const-string v24, "7B"

    .line 1141
    .line 1142
    aput-object v24, v1, v22

    .line 1143
    .line 1144
    const/16 v22, 0xbe

    .line 1145
    .line 1146
    const-string v24, "7D"

    .line 1147
    .line 1148
    aput-object v24, v1, v22

    .line 1149
    .line 1150
    const/16 v22, 0xbf

    .line 1151
    .line 1152
    const-string v24, "7F"

    .line 1153
    .line 1154
    aput-object v24, v1, v22

    .line 1155
    .line 1156
    const/16 v22, 0xc0

    .line 1157
    .line 1158
    const-string v24, "81"

    .line 1159
    .line 1160
    aput-object v24, v1, v22

    .line 1161
    .line 1162
    const/16 v22, 0xc1

    .line 1163
    .line 1164
    const-string v24, "83"

    .line 1165
    .line 1166
    aput-object v24, v1, v22

    .line 1167
    .line 1168
    const/16 v22, 0xc2

    .line 1169
    .line 1170
    const-string v24, "85"

    .line 1171
    .line 1172
    aput-object v24, v1, v22

    .line 1173
    .line 1174
    const/16 v22, 0xc3

    .line 1175
    .line 1176
    const-string v24, "87"

    .line 1177
    .line 1178
    aput-object v24, v1, v22

    .line 1179
    .line 1180
    const/16 v22, 0xc4

    .line 1181
    .line 1182
    const-string v24, "89"

    .line 1183
    .line 1184
    aput-object v24, v1, v22

    .line 1185
    .line 1186
    const/16 v22, 0xc5

    .line 1187
    .line 1188
    const-string v24, "8B"

    .line 1189
    .line 1190
    aput-object v24, v1, v22

    .line 1191
    .line 1192
    const/16 v22, 0xc6

    .line 1193
    .line 1194
    const-string v24, "8D"

    .line 1195
    .line 1196
    aput-object v24, v1, v22

    .line 1197
    .line 1198
    const/16 v22, 0xc7

    .line 1199
    .line 1200
    const-string v24, "8F"

    .line 1201
    .line 1202
    aput-object v24, v1, v22

    .line 1203
    .line 1204
    const/16 v22, 0xc8

    .line 1205
    .line 1206
    const-string v24, "91"

    .line 1207
    .line 1208
    aput-object v24, v1, v22

    .line 1209
    .line 1210
    const/16 v22, 0xc9

    .line 1211
    .line 1212
    const-string v24, "93"

    .line 1213
    .line 1214
    aput-object v24, v1, v22

    .line 1215
    .line 1216
    const/16 v22, 0xca

    .line 1217
    .line 1218
    const-string v24, "95"

    .line 1219
    .line 1220
    aput-object v24, v1, v22

    .line 1221
    .line 1222
    const/16 v22, 0xcb

    .line 1223
    .line 1224
    const-string v24, "97"

    .line 1225
    .line 1226
    aput-object v24, v1, v22

    .line 1227
    .line 1228
    const/16 v22, 0xcc

    .line 1229
    .line 1230
    const-string v24, "99"

    .line 1231
    .line 1232
    aput-object v24, v1, v22

    .line 1233
    .line 1234
    const/16 v22, 0xcd

    .line 1235
    .line 1236
    const-string v24, "9B"

    .line 1237
    .line 1238
    aput-object v24, v1, v22

    .line 1239
    .line 1240
    const/16 v22, 0xce

    .line 1241
    .line 1242
    const-string v24, "9D"

    .line 1243
    .line 1244
    aput-object v24, v1, v22

    .line 1245
    .line 1246
    const/16 v22, 0xcf

    .line 1247
    .line 1248
    const-string v24, "9F"

    .line 1249
    .line 1250
    aput-object v24, v1, v22

    .line 1251
    .line 1252
    const/16 v22, 0xd0

    .line 1253
    .line 1254
    const-string v24, "A1"

    .line 1255
    .line 1256
    aput-object v24, v1, v22

    .line 1257
    .line 1258
    const/16 v22, 0xd1

    .line 1259
    .line 1260
    const-string v24, "A3"

    .line 1261
    .line 1262
    aput-object v24, v1, v22

    .line 1263
    .line 1264
    const/16 v22, 0xd2

    .line 1265
    .line 1266
    const-string v24, "A5"

    .line 1267
    .line 1268
    aput-object v24, v1, v22

    .line 1269
    .line 1270
    const/16 v22, 0xd3

    .line 1271
    .line 1272
    const-string v24, "A7"

    .line 1273
    .line 1274
    aput-object v24, v1, v22

    .line 1275
    .line 1276
    const/16 v22, 0xd4

    .line 1277
    .line 1278
    const-string v24, "A9"

    .line 1279
    .line 1280
    aput-object v24, v1, v22

    .line 1281
    .line 1282
    const/16 v22, 0xd5

    .line 1283
    .line 1284
    const-string v24, "AB"

    .line 1285
    .line 1286
    aput-object v24, v1, v22

    .line 1287
    .line 1288
    const/16 v22, 0xd6

    .line 1289
    .line 1290
    const-string v24, "AD"

    .line 1291
    .line 1292
    aput-object v24, v1, v22

    .line 1293
    .line 1294
    const/16 v22, 0xd7

    .line 1295
    .line 1296
    const-string v24, "AF"

    .line 1297
    .line 1298
    aput-object v24, v1, v22

    .line 1299
    .line 1300
    const/16 v22, 0xd8

    .line 1301
    .line 1302
    const-string v24, "B1"

    .line 1303
    .line 1304
    aput-object v24, v1, v22

    .line 1305
    .line 1306
    const/16 v22, 0xd9

    .line 1307
    .line 1308
    const-string v24, "B3"

    .line 1309
    .line 1310
    aput-object v24, v1, v22

    .line 1311
    .line 1312
    const/16 v22, 0xda

    .line 1313
    .line 1314
    const-string v24, "B5"

    .line 1315
    .line 1316
    aput-object v24, v1, v22

    .line 1317
    .line 1318
    const/16 v22, 0xdb

    .line 1319
    .line 1320
    const-string v24, "B7"

    .line 1321
    .line 1322
    aput-object v24, v1, v22

    .line 1323
    .line 1324
    const/16 v22, 0xdc

    .line 1325
    .line 1326
    const-string v24, "B9"

    .line 1327
    .line 1328
    aput-object v24, v1, v22

    .line 1329
    .line 1330
    const/16 v22, 0xdd

    .line 1331
    .line 1332
    const-string v24, "BB"

    .line 1333
    .line 1334
    aput-object v24, v1, v22

    .line 1335
    .line 1336
    const/16 v22, 0xde

    .line 1337
    .line 1338
    const-string v24, "BD"

    .line 1339
    .line 1340
    aput-object v24, v1, v22

    .line 1341
    .line 1342
    const/16 v22, 0xdf

    .line 1343
    .line 1344
    const-string v24, "BF"

    .line 1345
    .line 1346
    aput-object v24, v1, v22

    .line 1347
    .line 1348
    const/16 v22, 0xe0

    .line 1349
    .line 1350
    const-string v24, "C1"

    .line 1351
    .line 1352
    aput-object v24, v1, v22

    .line 1353
    .line 1354
    const/16 v22, 0xe1

    .line 1355
    .line 1356
    const-string v24, "C3"

    .line 1357
    .line 1358
    aput-object v24, v1, v22

    .line 1359
    .line 1360
    const/16 v22, 0xe2

    .line 1361
    .line 1362
    const-string v24, "C5"

    .line 1363
    .line 1364
    aput-object v24, v1, v22

    .line 1365
    .line 1366
    const/16 v22, 0xe3

    .line 1367
    .line 1368
    const-string v24, "C7"

    .line 1369
    .line 1370
    aput-object v24, v1, v22

    .line 1371
    .line 1372
    const/16 v22, 0xe4

    .line 1373
    .line 1374
    const-string v24, "C9"

    .line 1375
    .line 1376
    aput-object v24, v1, v22

    .line 1377
    .line 1378
    const/16 v22, 0xe5

    .line 1379
    .line 1380
    const-string v24, "CB"

    .line 1381
    .line 1382
    aput-object v24, v1, v22

    .line 1383
    .line 1384
    const/16 v22, 0xe6

    .line 1385
    .line 1386
    const-string v24, "CD"

    .line 1387
    .line 1388
    aput-object v24, v1, v22

    .line 1389
    .line 1390
    const/16 v22, 0xe7

    .line 1391
    .line 1392
    const-string v24, "CF"

    .line 1393
    .line 1394
    aput-object v24, v1, v22

    .line 1395
    .line 1396
    const/16 v22, 0xe8

    .line 1397
    .line 1398
    const-string v24, "D1"

    .line 1399
    .line 1400
    aput-object v24, v1, v22

    .line 1401
    .line 1402
    const/16 v22, 0xe9

    .line 1403
    .line 1404
    const-string v24, "D3"

    .line 1405
    .line 1406
    aput-object v24, v1, v22

    .line 1407
    .line 1408
    const/16 v22, 0xea

    .line 1409
    .line 1410
    const-string v24, "D5"

    .line 1411
    .line 1412
    aput-object v24, v1, v22

    .line 1413
    .line 1414
    const/16 v22, 0xeb

    .line 1415
    .line 1416
    const-string v24, "D7"

    .line 1417
    .line 1418
    aput-object v24, v1, v22

    .line 1419
    .line 1420
    const/16 v22, 0xec

    .line 1421
    .line 1422
    const-string v24, "D9"

    .line 1423
    .line 1424
    aput-object v24, v1, v22

    .line 1425
    .line 1426
    const/16 v22, 0xed

    .line 1427
    .line 1428
    const-string v24, "DB"

    .line 1429
    .line 1430
    aput-object v24, v1, v22

    .line 1431
    .line 1432
    const/16 v22, 0xee

    .line 1433
    .line 1434
    const-string v24, "DD"

    .line 1435
    .line 1436
    aput-object v24, v1, v22

    .line 1437
    .line 1438
    const/16 v22, 0xef

    .line 1439
    .line 1440
    const-string v24, "DF"

    .line 1441
    .line 1442
    aput-object v24, v1, v22

    .line 1443
    .line 1444
    const/16 v22, 0xf0

    .line 1445
    .line 1446
    const-string v24, "E1"

    .line 1447
    .line 1448
    aput-object v24, v1, v22

    .line 1449
    .line 1450
    const/16 v22, 0xf1

    .line 1451
    .line 1452
    const-string v24, "E3"

    .line 1453
    .line 1454
    aput-object v24, v1, v22

    .line 1455
    .line 1456
    const/16 v22, 0xf2

    .line 1457
    .line 1458
    const-string v24, "E5"

    .line 1459
    .line 1460
    aput-object v24, v1, v22

    .line 1461
    .line 1462
    const/16 v22, 0xf3

    .line 1463
    .line 1464
    const-string v24, "E7"

    .line 1465
    .line 1466
    aput-object v24, v1, v22

    .line 1467
    .line 1468
    const/16 v22, 0xf4

    .line 1469
    .line 1470
    const-string v24, "E9"

    .line 1471
    .line 1472
    aput-object v24, v1, v22

    .line 1473
    .line 1474
    const/16 v22, 0xf5

    .line 1475
    .line 1476
    const-string v24, "EB"

    .line 1477
    .line 1478
    aput-object v24, v1, v22

    .line 1479
    .line 1480
    const/16 v22, 0xf6

    .line 1481
    .line 1482
    const-string v24, "ED"

    .line 1483
    .line 1484
    aput-object v24, v1, v22

    .line 1485
    .line 1486
    const/16 v22, 0xf7

    .line 1487
    .line 1488
    const-string v24, "EF"

    .line 1489
    .line 1490
    aput-object v24, v1, v22

    .line 1491
    .line 1492
    const/16 v22, 0xf8

    .line 1493
    .line 1494
    const-string v24, "F1"

    .line 1495
    .line 1496
    aput-object v24, v1, v22

    .line 1497
    .line 1498
    const/16 v22, 0xf9

    .line 1499
    .line 1500
    const-string v24, "F3"

    .line 1501
    .line 1502
    aput-object v24, v1, v22

    .line 1503
    .line 1504
    const/16 v22, 0xfa

    .line 1505
    .line 1506
    const-string v24, "F5"

    .line 1507
    .line 1508
    aput-object v24, v1, v22

    .line 1509
    .line 1510
    const/16 v22, 0xfb

    .line 1511
    .line 1512
    const-string v24, "F7"

    .line 1513
    .line 1514
    aput-object v24, v1, v22

    .line 1515
    .line 1516
    const/16 v22, 0xfc

    .line 1517
    .line 1518
    const-string v24, "F9"

    .line 1519
    .line 1520
    aput-object v24, v1, v22

    .line 1521
    .line 1522
    const/16 v22, 0xfd

    .line 1523
    .line 1524
    const-string v24, "FB"

    .line 1525
    .line 1526
    aput-object v24, v1, v22

    .line 1527
    .line 1528
    const/16 v22, 0xfe

    .line 1529
    .line 1530
    const-string v24, "FD"

    .line 1531
    .line 1532
    aput-object v24, v1, v22

    .line 1533
    .line 1534
    const/16 v22, 0xff

    .line 1535
    .line 1536
    const-string v24, "FF"

    .line 1537
    .line 1538
    aput-object v24, v1, v22

    .line 1539
    .line 1540
    sput-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    .line 1541
    .line 1542
    new-array v0, v0, [Ljava/lang/String;

    .line 1543
    .line 1544
    aput-object v3, v0, v2

    .line 1545
    .line 1546
    const-string v1, "80"

    .line 1547
    .line 1548
    aput-object v1, v0, v4

    .line 1549
    .line 1550
    const-string v1, "01"

    .line 1551
    .line 1552
    aput-object v1, v0, v6

    .line 1553
    .line 1554
    const-string v1, "81"

    .line 1555
    .line 1556
    aput-object v1, v0, v8

    .line 1557
    .line 1558
    aput-object v5, v0, v10

    .line 1559
    .line 1560
    const-string v1, "82"

    .line 1561
    .line 1562
    aput-object v1, v0, v12

    .line 1563
    .line 1564
    const-string v1, "03"

    .line 1565
    .line 1566
    aput-object v1, v0, v14

    .line 1567
    .line 1568
    const-string v1, "83"

    .line 1569
    .line 1570
    aput-object v1, v0, v16

    .line 1571
    .line 1572
    aput-object v7, v0, v18

    .line 1573
    .line 1574
    const-string v1, "84"

    .line 1575
    .line 1576
    aput-object v1, v0, v20

    .line 1577
    .line 1578
    const-string v1, "05"

    .line 1579
    .line 1580
    aput-object v1, v0, v23

    .line 1581
    .line 1582
    const/16 v1, 0xb

    .line 1583
    .line 1584
    const-string v2, "85"

    .line 1585
    .line 1586
    aput-object v2, v0, v1

    .line 1587
    .line 1588
    const/16 v1, 0xc

    .line 1589
    .line 1590
    aput-object v9, v0, v1

    .line 1591
    .line 1592
    const/16 v1, 0xd

    .line 1593
    .line 1594
    const-string v2, "86"

    .line 1595
    .line 1596
    aput-object v2, v0, v1

    .line 1597
    .line 1598
    const/16 v1, 0xe

    .line 1599
    .line 1600
    const-string v2, "07"

    .line 1601
    .line 1602
    aput-object v2, v0, v1

    .line 1603
    .line 1604
    const/16 v1, 0xf

    .line 1605
    .line 1606
    const-string v2, "87"

    .line 1607
    .line 1608
    aput-object v2, v0, v1

    .line 1609
    .line 1610
    const/16 v1, 0x10

    .line 1611
    .line 1612
    aput-object v11, v0, v1

    .line 1613
    .line 1614
    const/16 v1, 0x11

    .line 1615
    .line 1616
    const-string v2, "88"

    .line 1617
    .line 1618
    aput-object v2, v0, v1

    .line 1619
    .line 1620
    const/16 v1, 0x12

    .line 1621
    .line 1622
    const-string v2, "09"

    .line 1623
    .line 1624
    aput-object v2, v0, v1

    .line 1625
    .line 1626
    const/16 v1, 0x13

    .line 1627
    .line 1628
    const-string v2, "89"

    .line 1629
    .line 1630
    aput-object v2, v0, v1

    .line 1631
    .line 1632
    const/16 v1, 0x14

    .line 1633
    .line 1634
    aput-object v13, v0, v1

    .line 1635
    .line 1636
    const/16 v1, 0x15

    .line 1637
    .line 1638
    const-string v2, "8A"

    .line 1639
    .line 1640
    aput-object v2, v0, v1

    .line 1641
    .line 1642
    const/16 v1, 0x16

    .line 1643
    .line 1644
    const-string v2, "0B"

    .line 1645
    .line 1646
    aput-object v2, v0, v1

    .line 1647
    .line 1648
    const/16 v1, 0x17

    .line 1649
    .line 1650
    const-string v2, "8B"

    .line 1651
    .line 1652
    aput-object v2, v0, v1

    .line 1653
    .line 1654
    const/16 v1, 0x18

    .line 1655
    .line 1656
    aput-object v15, v0, v1

    .line 1657
    .line 1658
    const/16 v1, 0x19

    .line 1659
    .line 1660
    const-string v2, "8C"

    .line 1661
    .line 1662
    aput-object v2, v0, v1

    .line 1663
    .line 1664
    const/16 v1, 0x1a

    .line 1665
    .line 1666
    const-string v2, "0D"

    .line 1667
    .line 1668
    aput-object v2, v0, v1

    .line 1669
    .line 1670
    const/16 v1, 0x1b

    .line 1671
    .line 1672
    const-string v2, "8D"

    .line 1673
    .line 1674
    aput-object v2, v0, v1

    .line 1675
    .line 1676
    const/16 v1, 0x1c

    .line 1677
    .line 1678
    aput-object v17, v0, v1

    .line 1679
    .line 1680
    const/16 v1, 0x1d

    .line 1681
    .line 1682
    const-string v2, "8E"

    .line 1683
    .line 1684
    aput-object v2, v0, v1

    .line 1685
    .line 1686
    const/16 v1, 0x1e

    .line 1687
    .line 1688
    const-string v2, "0F"

    .line 1689
    .line 1690
    aput-object v2, v0, v1

    .line 1691
    .line 1692
    const/16 v1, 0x1f

    .line 1693
    .line 1694
    const-string v2, "8F"

    .line 1695
    .line 1696
    aput-object v2, v0, v1

    .line 1697
    .line 1698
    const/16 v1, 0x20

    .line 1699
    .line 1700
    aput-object v19, v0, v1

    .line 1701
    .line 1702
    const/16 v1, 0x21

    .line 1703
    .line 1704
    const-string v2, "90"

    .line 1705
    .line 1706
    aput-object v2, v0, v1

    .line 1707
    .line 1708
    const/16 v1, 0x22

    .line 1709
    .line 1710
    const-string v2, "11"

    .line 1711
    .line 1712
    aput-object v2, v0, v1

    .line 1713
    .line 1714
    const/16 v1, 0x23

    .line 1715
    .line 1716
    const-string v2, "91"

    .line 1717
    .line 1718
    aput-object v2, v0, v1

    .line 1719
    .line 1720
    const/16 v1, 0x24

    .line 1721
    .line 1722
    aput-object v21, v0, v1

    .line 1723
    .line 1724
    const/16 v1, 0x25

    .line 1725
    .line 1726
    const-string v2, "92"

    .line 1727
    .line 1728
    aput-object v2, v0, v1

    .line 1729
    .line 1730
    const/16 v1, 0x26

    .line 1731
    .line 1732
    const-string v2, "13"

    .line 1733
    .line 1734
    aput-object v2, v0, v1

    .line 1735
    .line 1736
    const/16 v1, 0x27

    .line 1737
    .line 1738
    const-string v2, "93"

    .line 1739
    .line 1740
    aput-object v2, v0, v1

    .line 1741
    .line 1742
    const/16 v1, 0x28

    .line 1743
    .line 1744
    const-string v2, "14"

    .line 1745
    .line 1746
    aput-object v2, v0, v1

    .line 1747
    .line 1748
    const/16 v1, 0x29

    .line 1749
    .line 1750
    const-string v2, "94"

    .line 1751
    .line 1752
    aput-object v2, v0, v1

    .line 1753
    .line 1754
    const/16 v1, 0x2a

    .line 1755
    .line 1756
    const-string v2, "15"

    .line 1757
    .line 1758
    aput-object v2, v0, v1

    .line 1759
    .line 1760
    const/16 v1, 0x2b

    .line 1761
    .line 1762
    const-string v2, "95"

    .line 1763
    .line 1764
    aput-object v2, v0, v1

    .line 1765
    .line 1766
    const/16 v1, 0x2c

    .line 1767
    .line 1768
    const-string v2, "16"

    .line 1769
    .line 1770
    aput-object v2, v0, v1

    .line 1771
    .line 1772
    const/16 v1, 0x2d

    .line 1773
    .line 1774
    const-string v2, "96"

    .line 1775
    .line 1776
    aput-object v2, v0, v1

    .line 1777
    .line 1778
    const/16 v1, 0x2e

    .line 1779
    .line 1780
    const-string v2, "17"

    .line 1781
    .line 1782
    aput-object v2, v0, v1

    .line 1783
    .line 1784
    const/16 v1, 0x2f

    .line 1785
    .line 1786
    const-string v2, "97"

    .line 1787
    .line 1788
    aput-object v2, v0, v1

    .line 1789
    .line 1790
    const/16 v1, 0x30

    .line 1791
    .line 1792
    const-string v2, "18"

    .line 1793
    .line 1794
    aput-object v2, v0, v1

    .line 1795
    .line 1796
    const/16 v1, 0x31

    .line 1797
    .line 1798
    const-string v2, "98"

    .line 1799
    .line 1800
    aput-object v2, v0, v1

    .line 1801
    .line 1802
    const/16 v1, 0x32

    .line 1803
    .line 1804
    const-string v2, "19"

    .line 1805
    .line 1806
    aput-object v2, v0, v1

    .line 1807
    .line 1808
    const/16 v1, 0x33

    .line 1809
    .line 1810
    const-string v2, "99"

    .line 1811
    .line 1812
    aput-object v2, v0, v1

    .line 1813
    .line 1814
    const/16 v1, 0x34

    .line 1815
    .line 1816
    const-string v2, "1A"

    .line 1817
    .line 1818
    aput-object v2, v0, v1

    .line 1819
    .line 1820
    const/16 v1, 0x35

    .line 1821
    .line 1822
    const-string v2, "9A"

    .line 1823
    .line 1824
    aput-object v2, v0, v1

    .line 1825
    .line 1826
    const/16 v1, 0x36

    .line 1827
    .line 1828
    const-string v2, "1B"

    .line 1829
    .line 1830
    aput-object v2, v0, v1

    .line 1831
    .line 1832
    const/16 v1, 0x37

    .line 1833
    .line 1834
    const-string v2, "9B"

    .line 1835
    .line 1836
    aput-object v2, v0, v1

    .line 1837
    .line 1838
    const/16 v1, 0x38

    .line 1839
    .line 1840
    const-string v2, "1C"

    .line 1841
    .line 1842
    aput-object v2, v0, v1

    .line 1843
    .line 1844
    const/16 v1, 0x39

    .line 1845
    .line 1846
    const-string v2, "9C"

    .line 1847
    .line 1848
    aput-object v2, v0, v1

    .line 1849
    .line 1850
    const/16 v1, 0x3a

    .line 1851
    .line 1852
    const-string v2, "1D"

    .line 1853
    .line 1854
    aput-object v2, v0, v1

    .line 1855
    .line 1856
    const/16 v1, 0x3b

    .line 1857
    .line 1858
    const-string v2, "9D"

    .line 1859
    .line 1860
    aput-object v2, v0, v1

    .line 1861
    .line 1862
    const/16 v1, 0x3c

    .line 1863
    .line 1864
    const-string v2, "1E"

    .line 1865
    .line 1866
    aput-object v2, v0, v1

    .line 1867
    .line 1868
    const/16 v1, 0x3d

    .line 1869
    .line 1870
    const-string v2, "9E"

    .line 1871
    .line 1872
    aput-object v2, v0, v1

    .line 1873
    .line 1874
    const/16 v1, 0x3e

    .line 1875
    .line 1876
    const-string v2, "1F"

    .line 1877
    .line 1878
    aput-object v2, v0, v1

    .line 1879
    .line 1880
    const/16 v1, 0x3f

    .line 1881
    .line 1882
    const-string v2, "9F"

    .line 1883
    .line 1884
    aput-object v2, v0, v1

    .line 1885
    .line 1886
    const/16 v1, 0x40

    .line 1887
    .line 1888
    const-string v2, "20"

    .line 1889
    .line 1890
    aput-object v2, v0, v1

    .line 1891
    .line 1892
    const/16 v1, 0x41

    .line 1893
    .line 1894
    const-string v2, "A0"

    .line 1895
    .line 1896
    aput-object v2, v0, v1

    .line 1897
    .line 1898
    const/16 v1, 0x42

    .line 1899
    .line 1900
    const-string v2, "21"

    .line 1901
    .line 1902
    aput-object v2, v0, v1

    .line 1903
    .line 1904
    const/16 v1, 0x43

    .line 1905
    .line 1906
    const-string v2, "A1"

    .line 1907
    .line 1908
    aput-object v2, v0, v1

    .line 1909
    .line 1910
    const/16 v1, 0x44

    .line 1911
    .line 1912
    const-string v2, "22"

    .line 1913
    .line 1914
    aput-object v2, v0, v1

    .line 1915
    .line 1916
    const/16 v1, 0x45

    .line 1917
    .line 1918
    const-string v2, "A2"

    .line 1919
    .line 1920
    aput-object v2, v0, v1

    .line 1921
    .line 1922
    const/16 v1, 0x46

    .line 1923
    .line 1924
    const-string v2, "23"

    .line 1925
    .line 1926
    aput-object v2, v0, v1

    .line 1927
    .line 1928
    const/16 v1, 0x47

    .line 1929
    .line 1930
    const-string v2, "A3"

    .line 1931
    .line 1932
    aput-object v2, v0, v1

    .line 1933
    .line 1934
    const/16 v1, 0x48

    .line 1935
    .line 1936
    const-string v2, "24"

    .line 1937
    .line 1938
    aput-object v2, v0, v1

    .line 1939
    .line 1940
    const/16 v1, 0x49

    .line 1941
    .line 1942
    const-string v2, "A4"

    .line 1943
    .line 1944
    aput-object v2, v0, v1

    .line 1945
    .line 1946
    const/16 v1, 0x4a

    .line 1947
    .line 1948
    const-string v2, "25"

    .line 1949
    .line 1950
    aput-object v2, v0, v1

    .line 1951
    .line 1952
    const/16 v1, 0x4b

    .line 1953
    .line 1954
    const-string v2, "A5"

    .line 1955
    .line 1956
    aput-object v2, v0, v1

    .line 1957
    .line 1958
    const/16 v1, 0x4c

    .line 1959
    .line 1960
    const-string v2, "26"

    .line 1961
    .line 1962
    aput-object v2, v0, v1

    .line 1963
    .line 1964
    const/16 v1, 0x4d

    .line 1965
    .line 1966
    const-string v2, "A6"

    .line 1967
    .line 1968
    aput-object v2, v0, v1

    .line 1969
    .line 1970
    const/16 v1, 0x4e

    .line 1971
    .line 1972
    const-string v2, "27"

    .line 1973
    .line 1974
    aput-object v2, v0, v1

    .line 1975
    .line 1976
    const/16 v1, 0x4f

    .line 1977
    .line 1978
    const-string v2, "A7"

    .line 1979
    .line 1980
    aput-object v2, v0, v1

    .line 1981
    .line 1982
    const/16 v1, 0x50

    .line 1983
    .line 1984
    const-string v2, "28"

    .line 1985
    .line 1986
    aput-object v2, v0, v1

    .line 1987
    .line 1988
    const/16 v1, 0x51

    .line 1989
    .line 1990
    const-string v2, "A8"

    .line 1991
    .line 1992
    aput-object v2, v0, v1

    .line 1993
    .line 1994
    const/16 v1, 0x52

    .line 1995
    .line 1996
    const-string v2, "29"

    .line 1997
    .line 1998
    aput-object v2, v0, v1

    .line 1999
    .line 2000
    const/16 v1, 0x53

    .line 2001
    .line 2002
    const-string v2, "A9"

    .line 2003
    .line 2004
    aput-object v2, v0, v1

    .line 2005
    .line 2006
    const/16 v1, 0x54

    .line 2007
    .line 2008
    const-string v2, "2A"

    .line 2009
    .line 2010
    aput-object v2, v0, v1

    .line 2011
    .line 2012
    const/16 v1, 0x55

    .line 2013
    .line 2014
    const-string v2, "AA"

    .line 2015
    .line 2016
    aput-object v2, v0, v1

    .line 2017
    .line 2018
    const/16 v1, 0x56

    .line 2019
    .line 2020
    const-string v2, "2B"

    .line 2021
    .line 2022
    aput-object v2, v0, v1

    .line 2023
    .line 2024
    const/16 v1, 0x57

    .line 2025
    .line 2026
    const-string v2, "AB"

    .line 2027
    .line 2028
    aput-object v2, v0, v1

    .line 2029
    .line 2030
    const/16 v1, 0x58

    .line 2031
    .line 2032
    const-string v2, "2C"

    .line 2033
    .line 2034
    aput-object v2, v0, v1

    .line 2035
    .line 2036
    const/16 v1, 0x59

    .line 2037
    .line 2038
    const-string v2, "AC"

    .line 2039
    .line 2040
    aput-object v2, v0, v1

    .line 2041
    .line 2042
    const/16 v1, 0x5a

    .line 2043
    .line 2044
    const-string v2, "2D"

    .line 2045
    .line 2046
    aput-object v2, v0, v1

    .line 2047
    .line 2048
    const/16 v1, 0x5b

    .line 2049
    .line 2050
    const-string v2, "AD"

    .line 2051
    .line 2052
    aput-object v2, v0, v1

    .line 2053
    .line 2054
    const/16 v1, 0x5c

    .line 2055
    .line 2056
    const-string v2, "2E"

    .line 2057
    .line 2058
    aput-object v2, v0, v1

    .line 2059
    .line 2060
    const/16 v1, 0x5d

    .line 2061
    .line 2062
    const-string v2, "AE"

    .line 2063
    .line 2064
    aput-object v2, v0, v1

    .line 2065
    .line 2066
    const/16 v1, 0x5e

    .line 2067
    .line 2068
    const-string v2, "2F"

    .line 2069
    .line 2070
    aput-object v2, v0, v1

    .line 2071
    .line 2072
    const/16 v1, 0x5f

    .line 2073
    .line 2074
    const-string v2, "AF"

    .line 2075
    .line 2076
    aput-object v2, v0, v1

    .line 2077
    .line 2078
    const/16 v1, 0x60

    .line 2079
    .line 2080
    const-string v2, "30"

    .line 2081
    .line 2082
    aput-object v2, v0, v1

    .line 2083
    .line 2084
    const/16 v1, 0x61

    .line 2085
    .line 2086
    const-string v2, "B0"

    .line 2087
    .line 2088
    aput-object v2, v0, v1

    .line 2089
    .line 2090
    const/16 v1, 0x62

    .line 2091
    .line 2092
    const-string v2, "31"

    .line 2093
    .line 2094
    aput-object v2, v0, v1

    .line 2095
    .line 2096
    const/16 v1, 0x63

    .line 2097
    .line 2098
    const-string v2, "B1"

    .line 2099
    .line 2100
    aput-object v2, v0, v1

    .line 2101
    .line 2102
    const/16 v1, 0x64

    .line 2103
    .line 2104
    const-string v2, "32"

    .line 2105
    .line 2106
    aput-object v2, v0, v1

    .line 2107
    .line 2108
    const/16 v1, 0x65

    .line 2109
    .line 2110
    const-string v2, "B2"

    .line 2111
    .line 2112
    aput-object v2, v0, v1

    .line 2113
    .line 2114
    const/16 v1, 0x66

    .line 2115
    .line 2116
    const-string v2, "33"

    .line 2117
    .line 2118
    aput-object v2, v0, v1

    .line 2119
    .line 2120
    const/16 v1, 0x67

    .line 2121
    .line 2122
    const-string v2, "B3"

    .line 2123
    .line 2124
    aput-object v2, v0, v1

    .line 2125
    .line 2126
    const/16 v1, 0x68

    .line 2127
    .line 2128
    const-string v2, "34"

    .line 2129
    .line 2130
    aput-object v2, v0, v1

    .line 2131
    .line 2132
    const/16 v1, 0x69

    .line 2133
    .line 2134
    const-string v2, "B4"

    .line 2135
    .line 2136
    aput-object v2, v0, v1

    .line 2137
    .line 2138
    const/16 v1, 0x6a

    .line 2139
    .line 2140
    const-string v2, "35"

    .line 2141
    .line 2142
    aput-object v2, v0, v1

    .line 2143
    .line 2144
    const/16 v1, 0x6b

    .line 2145
    .line 2146
    const-string v2, "B5"

    .line 2147
    .line 2148
    aput-object v2, v0, v1

    .line 2149
    .line 2150
    const/16 v1, 0x6c

    .line 2151
    .line 2152
    const-string v2, "36"

    .line 2153
    .line 2154
    aput-object v2, v0, v1

    .line 2155
    .line 2156
    const/16 v1, 0x6d

    .line 2157
    .line 2158
    const-string v2, "B6"

    .line 2159
    .line 2160
    aput-object v2, v0, v1

    .line 2161
    .line 2162
    const/16 v1, 0x6e

    .line 2163
    .line 2164
    const-string v2, "37"

    .line 2165
    .line 2166
    aput-object v2, v0, v1

    .line 2167
    .line 2168
    const/16 v1, 0x6f

    .line 2169
    .line 2170
    const-string v2, "B7"

    .line 2171
    .line 2172
    aput-object v2, v0, v1

    .line 2173
    .line 2174
    const/16 v1, 0x70

    .line 2175
    .line 2176
    const-string v2, "38"

    .line 2177
    .line 2178
    aput-object v2, v0, v1

    .line 2179
    .line 2180
    const/16 v1, 0x71

    .line 2181
    .line 2182
    const-string v2, "B8"

    .line 2183
    .line 2184
    aput-object v2, v0, v1

    .line 2185
    .line 2186
    const/16 v1, 0x72

    .line 2187
    .line 2188
    const-string v2, "39"

    .line 2189
    .line 2190
    aput-object v2, v0, v1

    .line 2191
    .line 2192
    const/16 v1, 0x73

    .line 2193
    .line 2194
    const-string v2, "B9"

    .line 2195
    .line 2196
    aput-object v2, v0, v1

    .line 2197
    .line 2198
    const/16 v1, 0x74

    .line 2199
    .line 2200
    const-string v2, "3A"

    .line 2201
    .line 2202
    aput-object v2, v0, v1

    .line 2203
    .line 2204
    const/16 v1, 0x75

    .line 2205
    .line 2206
    const-string v2, "BA"

    .line 2207
    .line 2208
    aput-object v2, v0, v1

    .line 2209
    .line 2210
    const/16 v1, 0x76

    .line 2211
    .line 2212
    const-string v2, "3B"

    .line 2213
    .line 2214
    aput-object v2, v0, v1

    .line 2215
    .line 2216
    const/16 v1, 0x77

    .line 2217
    .line 2218
    const-string v2, "BB"

    .line 2219
    .line 2220
    aput-object v2, v0, v1

    .line 2221
    .line 2222
    const/16 v1, 0x78

    .line 2223
    .line 2224
    const-string v2, "3C"

    .line 2225
    .line 2226
    aput-object v2, v0, v1

    .line 2227
    .line 2228
    const/16 v1, 0x79

    .line 2229
    .line 2230
    const-string v2, "BC"

    .line 2231
    .line 2232
    aput-object v2, v0, v1

    .line 2233
    .line 2234
    const/16 v1, 0x7a

    .line 2235
    .line 2236
    const-string v2, "3D"

    .line 2237
    .line 2238
    aput-object v2, v0, v1

    .line 2239
    .line 2240
    const/16 v1, 0x7b

    .line 2241
    .line 2242
    const-string v2, "BD"

    .line 2243
    .line 2244
    aput-object v2, v0, v1

    .line 2245
    .line 2246
    const/16 v1, 0x7c

    .line 2247
    .line 2248
    const-string v2, "3E"

    .line 2249
    .line 2250
    aput-object v2, v0, v1

    .line 2251
    .line 2252
    const/16 v1, 0x7d

    .line 2253
    .line 2254
    const-string v2, "BE"

    .line 2255
    .line 2256
    aput-object v2, v0, v1

    .line 2257
    .line 2258
    const/16 v1, 0x7e

    .line 2259
    .line 2260
    const-string v2, "3F"

    .line 2261
    .line 2262
    aput-object v2, v0, v1

    .line 2263
    .line 2264
    const/16 v1, 0x7f

    .line 2265
    .line 2266
    const-string v2, "BF"

    .line 2267
    .line 2268
    aput-object v2, v0, v1

    .line 2269
    .line 2270
    const/16 v1, 0x80

    .line 2271
    .line 2272
    const-string v2, "40"

    .line 2273
    .line 2274
    aput-object v2, v0, v1

    .line 2275
    .line 2276
    const/16 v1, 0x81

    .line 2277
    .line 2278
    const-string v2, "C0"

    .line 2279
    .line 2280
    aput-object v2, v0, v1

    .line 2281
    .line 2282
    const/16 v1, 0x82

    .line 2283
    .line 2284
    const-string v2, "41"

    .line 2285
    .line 2286
    aput-object v2, v0, v1

    .line 2287
    .line 2288
    const/16 v1, 0x83

    .line 2289
    .line 2290
    const-string v2, "C1"

    .line 2291
    .line 2292
    aput-object v2, v0, v1

    .line 2293
    .line 2294
    const/16 v1, 0x84

    .line 2295
    .line 2296
    const-string v2, "42"

    .line 2297
    .line 2298
    aput-object v2, v0, v1

    .line 2299
    .line 2300
    const/16 v1, 0x85

    .line 2301
    .line 2302
    const-string v2, "C2"

    .line 2303
    .line 2304
    aput-object v2, v0, v1

    .line 2305
    .line 2306
    const/16 v1, 0x86

    .line 2307
    .line 2308
    const-string v2, "43"

    .line 2309
    .line 2310
    aput-object v2, v0, v1

    .line 2311
    .line 2312
    const/16 v1, 0x87

    .line 2313
    .line 2314
    const-string v2, "C3"

    .line 2315
    .line 2316
    aput-object v2, v0, v1

    .line 2317
    .line 2318
    const/16 v1, 0x88

    .line 2319
    .line 2320
    const-string v2, "44"

    .line 2321
    .line 2322
    aput-object v2, v0, v1

    .line 2323
    .line 2324
    const/16 v1, 0x89

    .line 2325
    .line 2326
    const-string v2, "C4"

    .line 2327
    .line 2328
    aput-object v2, v0, v1

    .line 2329
    .line 2330
    const/16 v1, 0x8a

    .line 2331
    .line 2332
    const-string v2, "45"

    .line 2333
    .line 2334
    aput-object v2, v0, v1

    .line 2335
    .line 2336
    const/16 v1, 0x8b

    .line 2337
    .line 2338
    const-string v2, "C5"

    .line 2339
    .line 2340
    aput-object v2, v0, v1

    .line 2341
    .line 2342
    const/16 v1, 0x8c

    .line 2343
    .line 2344
    const-string v2, "46"

    .line 2345
    .line 2346
    aput-object v2, v0, v1

    .line 2347
    .line 2348
    const/16 v1, 0x8d

    .line 2349
    .line 2350
    const-string v2, "C6"

    .line 2351
    .line 2352
    aput-object v2, v0, v1

    .line 2353
    .line 2354
    const/16 v1, 0x8e

    .line 2355
    .line 2356
    const-string v2, "47"

    .line 2357
    .line 2358
    aput-object v2, v0, v1

    .line 2359
    .line 2360
    const/16 v1, 0x8f

    .line 2361
    .line 2362
    const-string v2, "C7"

    .line 2363
    .line 2364
    aput-object v2, v0, v1

    .line 2365
    .line 2366
    const/16 v1, 0x90

    .line 2367
    .line 2368
    const-string v2, "48"

    .line 2369
    .line 2370
    aput-object v2, v0, v1

    .line 2371
    .line 2372
    const/16 v1, 0x91

    .line 2373
    .line 2374
    const-string v2, "C8"

    .line 2375
    .line 2376
    aput-object v2, v0, v1

    .line 2377
    .line 2378
    const/16 v1, 0x92

    .line 2379
    .line 2380
    const-string v2, "49"

    .line 2381
    .line 2382
    aput-object v2, v0, v1

    .line 2383
    .line 2384
    const/16 v1, 0x93

    .line 2385
    .line 2386
    const-string v2, "C9"

    .line 2387
    .line 2388
    aput-object v2, v0, v1

    .line 2389
    .line 2390
    const/16 v1, 0x94

    .line 2391
    .line 2392
    const-string v2, "4A"

    .line 2393
    .line 2394
    aput-object v2, v0, v1

    .line 2395
    .line 2396
    const/16 v1, 0x95

    .line 2397
    .line 2398
    const-string v2, "CA"

    .line 2399
    .line 2400
    aput-object v2, v0, v1

    .line 2401
    .line 2402
    const/16 v1, 0x96

    .line 2403
    .line 2404
    const-string v2, "4B"

    .line 2405
    .line 2406
    aput-object v2, v0, v1

    .line 2407
    .line 2408
    const/16 v1, 0x97

    .line 2409
    .line 2410
    const-string v2, "CB"

    .line 2411
    .line 2412
    aput-object v2, v0, v1

    .line 2413
    .line 2414
    const/16 v1, 0x98

    .line 2415
    .line 2416
    const-string v2, "4C"

    .line 2417
    .line 2418
    aput-object v2, v0, v1

    .line 2419
    .line 2420
    const/16 v1, 0x99

    .line 2421
    .line 2422
    const-string v2, "CC"

    .line 2423
    .line 2424
    aput-object v2, v0, v1

    .line 2425
    .line 2426
    const/16 v1, 0x9a

    .line 2427
    .line 2428
    const-string v2, "4D"

    .line 2429
    .line 2430
    aput-object v2, v0, v1

    .line 2431
    .line 2432
    const/16 v1, 0x9b

    .line 2433
    .line 2434
    const-string v2, "CD"

    .line 2435
    .line 2436
    aput-object v2, v0, v1

    .line 2437
    .line 2438
    const/16 v1, 0x9c

    .line 2439
    .line 2440
    const-string v2, "4E"

    .line 2441
    .line 2442
    aput-object v2, v0, v1

    .line 2443
    .line 2444
    const/16 v1, 0x9d

    .line 2445
    .line 2446
    const-string v2, "CE"

    .line 2447
    .line 2448
    aput-object v2, v0, v1

    .line 2449
    .line 2450
    const/16 v1, 0x9e

    .line 2451
    .line 2452
    const-string v2, "4F"

    .line 2453
    .line 2454
    aput-object v2, v0, v1

    .line 2455
    .line 2456
    const/16 v1, 0x9f

    .line 2457
    .line 2458
    const-string v2, "CF"

    .line 2459
    .line 2460
    aput-object v2, v0, v1

    .line 2461
    .line 2462
    const/16 v1, 0xa0

    .line 2463
    .line 2464
    const-string v2, "50"

    .line 2465
    .line 2466
    aput-object v2, v0, v1

    .line 2467
    .line 2468
    const/16 v1, 0xa1

    .line 2469
    .line 2470
    const-string v2, "D0"

    .line 2471
    .line 2472
    aput-object v2, v0, v1

    .line 2473
    .line 2474
    const/16 v1, 0xa2

    .line 2475
    .line 2476
    const-string v2, "51"

    .line 2477
    .line 2478
    aput-object v2, v0, v1

    .line 2479
    .line 2480
    const/16 v1, 0xa3

    .line 2481
    .line 2482
    const-string v2, "D1"

    .line 2483
    .line 2484
    aput-object v2, v0, v1

    .line 2485
    .line 2486
    const/16 v1, 0xa4

    .line 2487
    .line 2488
    const-string v2, "52"

    .line 2489
    .line 2490
    aput-object v2, v0, v1

    .line 2491
    .line 2492
    const/16 v1, 0xa5

    .line 2493
    .line 2494
    const-string v2, "D2"

    .line 2495
    .line 2496
    aput-object v2, v0, v1

    .line 2497
    .line 2498
    const/16 v1, 0xa6

    .line 2499
    .line 2500
    const-string v2, "53"

    .line 2501
    .line 2502
    aput-object v2, v0, v1

    .line 2503
    .line 2504
    const/16 v1, 0xa7

    .line 2505
    .line 2506
    const-string v2, "D3"

    .line 2507
    .line 2508
    aput-object v2, v0, v1

    .line 2509
    .line 2510
    const/16 v1, 0xa8

    .line 2511
    .line 2512
    const-string v2, "54"

    .line 2513
    .line 2514
    aput-object v2, v0, v1

    .line 2515
    .line 2516
    const/16 v1, 0xa9

    .line 2517
    .line 2518
    const-string v2, "D4"

    .line 2519
    .line 2520
    aput-object v2, v0, v1

    .line 2521
    .line 2522
    const/16 v1, 0xaa

    .line 2523
    .line 2524
    const-string v2, "55"

    .line 2525
    .line 2526
    aput-object v2, v0, v1

    .line 2527
    .line 2528
    const/16 v1, 0xab

    .line 2529
    .line 2530
    const-string v2, "D5"

    .line 2531
    .line 2532
    aput-object v2, v0, v1

    .line 2533
    .line 2534
    const/16 v1, 0xac

    .line 2535
    .line 2536
    const-string v2, "56"

    .line 2537
    .line 2538
    aput-object v2, v0, v1

    .line 2539
    .line 2540
    const/16 v1, 0xad

    .line 2541
    .line 2542
    const-string v2, "D6"

    .line 2543
    .line 2544
    aput-object v2, v0, v1

    .line 2545
    .line 2546
    const/16 v1, 0xae

    .line 2547
    .line 2548
    const-string v2, "57"

    .line 2549
    .line 2550
    aput-object v2, v0, v1

    .line 2551
    .line 2552
    const/16 v1, 0xaf

    .line 2553
    .line 2554
    const-string v2, "D7"

    .line 2555
    .line 2556
    aput-object v2, v0, v1

    .line 2557
    .line 2558
    const/16 v1, 0xb0

    .line 2559
    .line 2560
    const-string v2, "58"

    .line 2561
    .line 2562
    aput-object v2, v0, v1

    .line 2563
    .line 2564
    const/16 v1, 0xb1

    .line 2565
    .line 2566
    const-string v2, "D8"

    .line 2567
    .line 2568
    aput-object v2, v0, v1

    .line 2569
    .line 2570
    const/16 v1, 0xb2

    .line 2571
    .line 2572
    const-string v2, "59"

    .line 2573
    .line 2574
    aput-object v2, v0, v1

    .line 2575
    .line 2576
    const/16 v1, 0xb3

    .line 2577
    .line 2578
    const-string v2, "D9"

    .line 2579
    .line 2580
    aput-object v2, v0, v1

    .line 2581
    .line 2582
    const/16 v1, 0xb4

    .line 2583
    .line 2584
    const-string v2, "5A"

    .line 2585
    .line 2586
    aput-object v2, v0, v1

    .line 2587
    .line 2588
    const/16 v1, 0xb5

    .line 2589
    .line 2590
    const-string v2, "DA"

    .line 2591
    .line 2592
    aput-object v2, v0, v1

    .line 2593
    .line 2594
    const/16 v1, 0xb6

    .line 2595
    .line 2596
    const-string v2, "5B"

    .line 2597
    .line 2598
    aput-object v2, v0, v1

    .line 2599
    .line 2600
    const/16 v1, 0xb7

    .line 2601
    .line 2602
    const-string v2, "DB"

    .line 2603
    .line 2604
    aput-object v2, v0, v1

    .line 2605
    .line 2606
    const/16 v1, 0xb8

    .line 2607
    .line 2608
    const-string v2, "5C"

    .line 2609
    .line 2610
    aput-object v2, v0, v1

    .line 2611
    .line 2612
    const/16 v1, 0xb9

    .line 2613
    .line 2614
    const-string v2, "DC"

    .line 2615
    .line 2616
    aput-object v2, v0, v1

    .line 2617
    .line 2618
    const/16 v1, 0xba

    .line 2619
    .line 2620
    const-string v2, "5D"

    .line 2621
    .line 2622
    aput-object v2, v0, v1

    .line 2623
    .line 2624
    const/16 v1, 0xbb

    .line 2625
    .line 2626
    const-string v2, "DD"

    .line 2627
    .line 2628
    aput-object v2, v0, v1

    .line 2629
    .line 2630
    const/16 v1, 0xbc

    .line 2631
    .line 2632
    const-string v2, "5E"

    .line 2633
    .line 2634
    aput-object v2, v0, v1

    .line 2635
    .line 2636
    const/16 v1, 0xbd

    .line 2637
    .line 2638
    const-string v2, "DE"

    .line 2639
    .line 2640
    aput-object v2, v0, v1

    .line 2641
    .line 2642
    const/16 v1, 0xbe

    .line 2643
    .line 2644
    const-string v2, "5F"

    .line 2645
    .line 2646
    aput-object v2, v0, v1

    .line 2647
    .line 2648
    const/16 v1, 0xbf

    .line 2649
    .line 2650
    const-string v2, "DF"

    .line 2651
    .line 2652
    aput-object v2, v0, v1

    .line 2653
    .line 2654
    const/16 v1, 0xc0

    .line 2655
    .line 2656
    const-string v2, "60"

    .line 2657
    .line 2658
    aput-object v2, v0, v1

    .line 2659
    .line 2660
    const/16 v1, 0xc1

    .line 2661
    .line 2662
    const-string v2, "E0"

    .line 2663
    .line 2664
    aput-object v2, v0, v1

    .line 2665
    .line 2666
    const/16 v1, 0xc2

    .line 2667
    .line 2668
    const-string v2, "61"

    .line 2669
    .line 2670
    aput-object v2, v0, v1

    .line 2671
    .line 2672
    const/16 v1, 0xc3

    .line 2673
    .line 2674
    const-string v2, "E1"

    .line 2675
    .line 2676
    aput-object v2, v0, v1

    .line 2677
    .line 2678
    const/16 v1, 0xc4

    .line 2679
    .line 2680
    const-string v2, "62"

    .line 2681
    .line 2682
    aput-object v2, v0, v1

    .line 2683
    .line 2684
    const/16 v1, 0xc5

    .line 2685
    .line 2686
    const-string v2, "E2"

    .line 2687
    .line 2688
    aput-object v2, v0, v1

    .line 2689
    .line 2690
    const/16 v1, 0xc6

    .line 2691
    .line 2692
    const-string v2, "63"

    .line 2693
    .line 2694
    aput-object v2, v0, v1

    .line 2695
    .line 2696
    const/16 v1, 0xc7

    .line 2697
    .line 2698
    const-string v2, "E3"

    .line 2699
    .line 2700
    aput-object v2, v0, v1

    .line 2701
    .line 2702
    const/16 v1, 0xc8

    .line 2703
    .line 2704
    const-string v2, "64"

    .line 2705
    .line 2706
    aput-object v2, v0, v1

    .line 2707
    .line 2708
    const/16 v1, 0xc9

    .line 2709
    .line 2710
    const-string v2, "E4"

    .line 2711
    .line 2712
    aput-object v2, v0, v1

    .line 2713
    .line 2714
    const/16 v1, 0xca

    .line 2715
    .line 2716
    const-string v2, "65"

    .line 2717
    .line 2718
    aput-object v2, v0, v1

    .line 2719
    .line 2720
    const/16 v1, 0xcb

    .line 2721
    .line 2722
    const-string v2, "E5"

    .line 2723
    .line 2724
    aput-object v2, v0, v1

    .line 2725
    .line 2726
    const/16 v1, 0xcc

    .line 2727
    .line 2728
    const-string v2, "66"

    .line 2729
    .line 2730
    aput-object v2, v0, v1

    .line 2731
    .line 2732
    const/16 v1, 0xcd

    .line 2733
    .line 2734
    const-string v2, "E6"

    .line 2735
    .line 2736
    aput-object v2, v0, v1

    .line 2737
    .line 2738
    const/16 v1, 0xce

    .line 2739
    .line 2740
    const-string v2, "67"

    .line 2741
    .line 2742
    aput-object v2, v0, v1

    .line 2743
    .line 2744
    const/16 v1, 0xcf

    .line 2745
    .line 2746
    const-string v2, "E7"

    .line 2747
    .line 2748
    aput-object v2, v0, v1

    .line 2749
    .line 2750
    const/16 v1, 0xd0

    .line 2751
    .line 2752
    const-string v2, "68"

    .line 2753
    .line 2754
    aput-object v2, v0, v1

    .line 2755
    .line 2756
    const/16 v1, 0xd1

    .line 2757
    .line 2758
    const-string v2, "E8"

    .line 2759
    .line 2760
    aput-object v2, v0, v1

    .line 2761
    .line 2762
    const/16 v1, 0xd2

    .line 2763
    .line 2764
    const-string v2, "69"

    .line 2765
    .line 2766
    aput-object v2, v0, v1

    .line 2767
    .line 2768
    const/16 v1, 0xd3

    .line 2769
    .line 2770
    const-string v2, "E9"

    .line 2771
    .line 2772
    aput-object v2, v0, v1

    .line 2773
    .line 2774
    const/16 v1, 0xd4

    .line 2775
    .line 2776
    const-string v2, "6A"

    .line 2777
    .line 2778
    aput-object v2, v0, v1

    .line 2779
    .line 2780
    const/16 v1, 0xd5

    .line 2781
    .line 2782
    const-string v2, "EA"

    .line 2783
    .line 2784
    aput-object v2, v0, v1

    .line 2785
    .line 2786
    const/16 v1, 0xd6

    .line 2787
    .line 2788
    const-string v2, "6B"

    .line 2789
    .line 2790
    aput-object v2, v0, v1

    .line 2791
    .line 2792
    const/16 v1, 0xd7

    .line 2793
    .line 2794
    const-string v2, "EB"

    .line 2795
    .line 2796
    aput-object v2, v0, v1

    .line 2797
    .line 2798
    const/16 v1, 0xd8

    .line 2799
    .line 2800
    const-string v2, "6C"

    .line 2801
    .line 2802
    aput-object v2, v0, v1

    .line 2803
    .line 2804
    const/16 v1, 0xd9

    .line 2805
    .line 2806
    const-string v2, "EC"

    .line 2807
    .line 2808
    aput-object v2, v0, v1

    .line 2809
    .line 2810
    const/16 v1, 0xda

    .line 2811
    .line 2812
    const-string v2, "6D"

    .line 2813
    .line 2814
    aput-object v2, v0, v1

    .line 2815
    .line 2816
    const/16 v1, 0xdb

    .line 2817
    .line 2818
    const-string v2, "ED"

    .line 2819
    .line 2820
    aput-object v2, v0, v1

    .line 2821
    .line 2822
    const/16 v1, 0xdc

    .line 2823
    .line 2824
    const-string v2, "6E"

    .line 2825
    .line 2826
    aput-object v2, v0, v1

    .line 2827
    .line 2828
    const/16 v1, 0xdd

    .line 2829
    .line 2830
    const-string v2, "EE"

    .line 2831
    .line 2832
    aput-object v2, v0, v1

    .line 2833
    .line 2834
    const/16 v1, 0xde

    .line 2835
    .line 2836
    const-string v2, "6F"

    .line 2837
    .line 2838
    aput-object v2, v0, v1

    .line 2839
    .line 2840
    const/16 v1, 0xdf

    .line 2841
    .line 2842
    const-string v2, "EF"

    .line 2843
    .line 2844
    aput-object v2, v0, v1

    .line 2845
    .line 2846
    const/16 v1, 0xe0

    .line 2847
    .line 2848
    const-string v2, "70"

    .line 2849
    .line 2850
    aput-object v2, v0, v1

    .line 2851
    .line 2852
    const/16 v1, 0xe1

    .line 2853
    .line 2854
    const-string v2, "F0"

    .line 2855
    .line 2856
    aput-object v2, v0, v1

    .line 2857
    .line 2858
    const/16 v1, 0xe2

    .line 2859
    .line 2860
    const-string v2, "71"

    .line 2861
    .line 2862
    aput-object v2, v0, v1

    .line 2863
    .line 2864
    const/16 v1, 0xe3

    .line 2865
    .line 2866
    const-string v2, "F1"

    .line 2867
    .line 2868
    aput-object v2, v0, v1

    .line 2869
    .line 2870
    const/16 v1, 0xe4

    .line 2871
    .line 2872
    const-string v2, "72"

    .line 2873
    .line 2874
    aput-object v2, v0, v1

    .line 2875
    .line 2876
    const/16 v1, 0xe5

    .line 2877
    .line 2878
    const-string v2, "F2"

    .line 2879
    .line 2880
    aput-object v2, v0, v1

    .line 2881
    .line 2882
    const/16 v1, 0xe6

    .line 2883
    .line 2884
    const-string v2, "73"

    .line 2885
    .line 2886
    aput-object v2, v0, v1

    .line 2887
    .line 2888
    const/16 v1, 0xe7

    .line 2889
    .line 2890
    const-string v2, "F3"

    .line 2891
    .line 2892
    aput-object v2, v0, v1

    .line 2893
    .line 2894
    const/16 v1, 0xe8

    .line 2895
    .line 2896
    const-string v2, "74"

    .line 2897
    .line 2898
    aput-object v2, v0, v1

    .line 2899
    .line 2900
    const/16 v1, 0xe9

    .line 2901
    .line 2902
    const-string v2, "F4"

    .line 2903
    .line 2904
    aput-object v2, v0, v1

    .line 2905
    .line 2906
    const/16 v1, 0xea

    .line 2907
    .line 2908
    const-string v2, "75"

    .line 2909
    .line 2910
    aput-object v2, v0, v1

    .line 2911
    .line 2912
    const/16 v1, 0xeb

    .line 2913
    .line 2914
    const-string v2, "F5"

    .line 2915
    .line 2916
    aput-object v2, v0, v1

    .line 2917
    .line 2918
    const/16 v1, 0xec

    .line 2919
    .line 2920
    const-string v2, "76"

    .line 2921
    .line 2922
    aput-object v2, v0, v1

    .line 2923
    .line 2924
    const/16 v1, 0xed

    .line 2925
    .line 2926
    const-string v2, "F6"

    .line 2927
    .line 2928
    aput-object v2, v0, v1

    .line 2929
    .line 2930
    const/16 v1, 0xee

    .line 2931
    .line 2932
    const-string v2, "77"

    .line 2933
    .line 2934
    aput-object v2, v0, v1

    .line 2935
    .line 2936
    const/16 v1, 0xef

    .line 2937
    .line 2938
    const-string v2, "F7"

    .line 2939
    .line 2940
    aput-object v2, v0, v1

    .line 2941
    .line 2942
    const/16 v1, 0xf0

    .line 2943
    .line 2944
    const-string v2, "78"

    .line 2945
    .line 2946
    aput-object v2, v0, v1

    .line 2947
    .line 2948
    const/16 v1, 0xf1

    .line 2949
    .line 2950
    const-string v2, "F8"

    .line 2951
    .line 2952
    aput-object v2, v0, v1

    .line 2953
    .line 2954
    const/16 v1, 0xf2

    .line 2955
    .line 2956
    const-string v2, "79"

    .line 2957
    .line 2958
    aput-object v2, v0, v1

    .line 2959
    .line 2960
    const/16 v1, 0xf3

    .line 2961
    .line 2962
    const-string v2, "F9"

    .line 2963
    .line 2964
    aput-object v2, v0, v1

    .line 2965
    .line 2966
    const/16 v1, 0xf4

    .line 2967
    .line 2968
    const-string v2, "7A"

    .line 2969
    .line 2970
    aput-object v2, v0, v1

    .line 2971
    .line 2972
    const/16 v1, 0xf5

    .line 2973
    .line 2974
    const-string v2, "FA"

    .line 2975
    .line 2976
    aput-object v2, v0, v1

    .line 2977
    .line 2978
    const/16 v1, 0xf6

    .line 2979
    .line 2980
    const-string v2, "7B"

    .line 2981
    .line 2982
    aput-object v2, v0, v1

    .line 2983
    .line 2984
    const/16 v1, 0xf7

    .line 2985
    .line 2986
    const-string v2, "FB"

    .line 2987
    .line 2988
    aput-object v2, v0, v1

    .line 2989
    .line 2990
    const/16 v1, 0xf8

    .line 2991
    .line 2992
    const-string v2, "7C"

    .line 2993
    .line 2994
    aput-object v2, v0, v1

    .line 2995
    .line 2996
    const/16 v1, 0xf9

    .line 2997
    .line 2998
    const-string v2, "FC"

    .line 2999
    .line 3000
    aput-object v2, v0, v1

    .line 3001
    .line 3002
    const/16 v1, 0xfa

    .line 3003
    .line 3004
    const-string v2, "7D"

    .line 3005
    .line 3006
    aput-object v2, v0, v1

    .line 3007
    .line 3008
    const/16 v1, 0xfb

    .line 3009
    .line 3010
    const-string v2, "FD"

    .line 3011
    .line 3012
    aput-object v2, v0, v1

    .line 3013
    .line 3014
    const/16 v1, 0xfc

    .line 3015
    .line 3016
    const-string v2, "7E"

    .line 3017
    .line 3018
    aput-object v2, v0, v1

    .line 3019
    .line 3020
    const/16 v1, 0xfd

    .line 3021
    .line 3022
    const-string v2, "FE"

    .line 3023
    .line 3024
    aput-object v2, v0, v1

    .line 3025
    .line 3026
    const/16 v1, 0xfe

    .line 3027
    .line 3028
    const-string v2, "7F"

    .line 3029
    .line 3030
    aput-object v2, v0, v1

    .line 3031
    .line 3032
    const/16 v1, 0xff

    .line 3033
    .line 3034
    const-string v2, "FF"

    .line 3035
    .line 3036
    aput-object v2, v0, v1

    .line 3037
    .line 3038
    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    .line 3039
    .line 3040
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    .line 3041
    .line 3042
    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$2;-><init>()V

    .line 3043
    .line 3044
    .line 3045
    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    .line 3046
    .line 3047
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareSameWithGear(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    move v4, v3

    .line 7
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const/4 v6, 0x1

    .line 12
    if-ge v3, v5, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/16 v7, 0x3a

    .line 19
    .line 20
    if-eq v5, v7, :cond_0

    .line 21
    .line 22
    add-int/lit8 v5, v3, 0x2

    .line 23
    .line 24
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/16 v7, 0x10

    .line 29
    .line 30
    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-byte v5, v5

    .line 35
    aput-byte v5, v1, v4

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    :cond_0
    add-int/2addr v3, v6

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p2, "%02X"

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-nez p0, :cond_4

    .line 47
    .line 48
    invoke-static {p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    aget-byte v4, v1, v2

    .line 55
    .line 56
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {p1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_2

    .line 88
    .line 89
    return v2

    .line 90
    :cond_2
    move p0, v6

    .line 91
    :goto_1
    if-ge p0, v0, :cond_7

    .line 92
    .line 93
    aget-byte p1, v1, p0

    .line 94
    .line 95
    and-int/lit16 p1, p1, 0xff

    .line 96
    .line 97
    mul-int/lit8 p2, p0, 0x3

    .line 98
    .line 99
    add-int/lit8 v3, p2, 0x2

    .line 100
    .line 101
    invoke-virtual {p3, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    sget-object v3, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_RIGHT:[Ljava/lang/String;

    .line 106
    .line 107
    aget-object p1, v3, p1

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    return v2

    .line 116
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    if-ne p0, v6, :cond_8

    .line 120
    .line 121
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 122
    .line 123
    aget-byte p1, v1, v2

    .line 124
    .line 125
    or-int/lit16 p1, p1, 0xc0

    .line 126
    .line 127
    int-to-byte p1, p1

    .line 128
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_5

    .line 149
    .line 150
    return v2

    .line 151
    :cond_5
    move p0, v6

    .line 152
    :goto_2
    if-ge p0, v0, :cond_7

    .line 153
    .line 154
    aget-byte p1, v1, p0

    .line 155
    .line 156
    and-int/lit16 p1, p1, 0xff

    .line 157
    .line 158
    mul-int/lit8 p2, p0, 0x3

    .line 159
    .line 160
    add-int/lit8 v3, p2, 0x2

    .line 161
    .line 162
    invoke-virtual {p3, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    sget-object v3, Lcom/android/settingslib/bluetooth/BluetoothUtils;->BD_ROTATE_LEFT:[Ljava/lang/String;

    .line 167
    .line 168
    aget-object p1, v3, p1

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_6

    .line 175
    .line 176
    return v2

    .line 177
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    return v6

    .line 181
    :cond_8
    return v2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Landroid/graphics/Canvas;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x100

    .line 14
    .line 15
    if-eq v1, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x200

    .line 18
    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x500

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x600

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 31
    .line 32
    const v0, 0x1080582

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f1302b0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v1, 0x7f1302b1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_2
    new-instance p1, Landroid/util/Pair;

    .line 72
    .line 73
    const v0, 0x108055e

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const v1, 0x7f1302b2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_3
    new-instance p1, Landroid/util/Pair;

    .line 92
    .line 93
    const v0, 0x1080377

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const v1, 0x7f1302ad

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const/4 v1, 0x0

    .line 120
    move v2, v1

    .line 121
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x0

    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 133
    .line 134
    invoke-interface {v3, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_5

    .line 139
    .line 140
    instance-of v6, v3, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 141
    .line 142
    if-nez v6, :cond_7

    .line 143
    .line 144
    instance-of v3, v3, Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    if-nez v2, :cond_5

    .line 150
    .line 151
    move v2, v5

    .line 152
    goto :goto_1

    .line 153
    :cond_7
    :goto_2
    new-instance p1, Landroid/util/Pair;

    .line 154
    .line 155
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-direct {p1, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_8
    if-eqz v2, :cond_9

    .line 164
    .line 165
    new-instance p1, Landroid/util/Pair;

    .line 166
    .line 167
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-direct {p1, p0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    return-object p1

    .line 175
    :cond_9
    if-eqz v0, :cond_b

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_a

    .line 182
    .line 183
    new-instance p1, Landroid/util/Pair;

    .line 184
    .line 185
    const v0, 0x1080375

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const v1, 0x7f1302af

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :cond_a
    const/4 p1, 0x1

    .line 204
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_b

    .line 209
    .line 210
    new-instance p1, Landroid/util/Pair;

    .line 211
    .line 212
    const v0, 0x1080374

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const v1, 0x7f1302ae

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_b
    new-instance p1, Landroid/util/Pair;

    .line 231
    .line 232
    const v0, 0x1080580

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const v1, 0x7f1302ac

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    return-object p1
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const p0, 0x7f13024d

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const p0, 0x7f13023d

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :cond_2
    const p0, 0x7f130246

    .line 23
    .line 24
    .line 25
    return p0

    .line 26
    :cond_3
    const p0, 0x7f13024c

    .line 27
    .line 28
    .line 29
    return p0
.end method

.method public static getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_8

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v0, v4, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v4, :cond_5

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    if-eq v4, v6, :cond_4

    .line 46
    .line 47
    const/4 v7, 0x3

    .line 48
    if-eq v4, v7, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    if-eq v5, v6, :cond_6

    .line 52
    .line 53
    if-ne v5, v1, :cond_7

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    if-ne v5, v1, :cond_7

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    if-eqz v5, :cond_7

    .line 60
    .line 61
    :cond_6
    :goto_1
    move-object p0, v3

    .line 62
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ne v3, v1, :cond_1

    .line 67
    .line 68
    :cond_8
    return-object p0
.end method

.method public static getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.android.systemui"

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0604cc

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f060082

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const p1, 0x7f0810d5

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0810d6

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p0, p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getOverlayIconTintableDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_2
    const-string p1, "BluetoothUtils"

    .line 72
    .line 73
    const-string v1, "getHostOverlayIconDrawable - cachedBluetoothDevice is null"

    .line 74
    .line 75
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const p1, 0x7f080be4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 90
    .line 91
    .line 92
    return-object p0
.end method

.method public static getOverlayIconTintableDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.android.systemui"

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0604cc

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f060082

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Landroid/graphics/Canvas;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    new-instance p0, Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 108
    .line 109
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 110
    .line 111
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p2, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 121
    .line 122
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 123
    .line 124
    invoke-direct {p2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p3, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 134
    .line 135
    .line 136
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 143
    .line 144
    .line 145
    return-object p0
.end method

.method public static getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Z)Ljava/util/List;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "getRestoredDevices :: will be cursor close"

    .line 4
    .line 5
    const-string v2, "BluetoothUtils"

    .line 6
    .line 7
    const-string v3, "getRestoredDevices() :: cursor count: "

    .line 8
    .line 9
    const-string v7, "bond_state == 1 OR bond_state == 4"

    .line 10
    .line 11
    const-string v10, "address"

    .line 12
    .line 13
    const-string/jumbo v11, "name"

    .line 14
    .line 15
    .line 16
    const-string v12, "cod"

    .line 17
    .line 18
    const-string v13, "bond_state"

    .line 19
    .line 20
    const-string v14, "appearance"

    .line 21
    .line 22
    const-string/jumbo v15, "manufacturerdata"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v9, "timestamp"

    .line 26
    .line 27
    .line 28
    const-string v8, "linktype"

    .line 29
    .line 30
    const-string/jumbo v6, "uuids"

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v16, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 44
    .line 45
    move-object/from16 v17, v4

    .line 46
    .line 47
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object/from16 v16, v5

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {v4, v5}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v18, 0x0

    .line 62
    .line 63
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    const-string/jumbo v21, "timestamp DESC"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .line 73
    .line 74
    move-object/from16 v22, v17

    .line 75
    .line 76
    move-object/from16 v23, v16

    .line 77
    .line 78
    move-object/from16 v24, v6

    .line 79
    .line 80
    move-object/from16 v6, v19

    .line 81
    .line 82
    move-object/from16 v25, v8

    .line 83
    .line 84
    move-object/from16 v8, v20

    .line 85
    .line 86
    move-object v0, v9

    .line 87
    move-object/from16 v9, v21

    .line 88
    .line 89
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 90
    .line 91
    .line 92
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    if-nez v4, :cond_1

    .line 94
    .line 95
    :try_start_2
    const-string v0, "getRestoredDevices() :: query return null"

    .line 96
    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    if-eqz v4, :cond_0

    .line 101
    .line 102
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_0
    return-object v18

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object/from16 v18, v4

    .line 111
    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v3, ", Columns : "

    .line 127
    .line 128
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    .line 147
    .line 148
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    move-object/from16 v10, v25

    .line 177
    .line 178
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    move-object/from16 v11, v24

    .line 183
    .line 184
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    if-nez v12, :cond_4

    .line 193
    .line 194
    new-instance v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    .line 195
    .line 196
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    move-object/from16 v14, p0

    .line 201
    .line 202
    invoke-direct {v12, v14, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    iput-object v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mName:Ljava/lang/String;

    .line 210
    .line 211
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    iput v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mCod:I

    .line 216
    .line 217
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    iput v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mBondState:I

    .line 222
    .line 223
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    iput v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAppearance:I

    .line 228
    .line 229
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    invoke-static {v13}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stringToByte(Ljava/lang/String;)[B

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    iput-object v13, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mManufacturerData:[B

    .line 238
    .line 239
    move v15, v5

    .line 240
    move/from16 v16, v6

    .line 241
    .line 242
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 243
    .line 244
    .line 245
    move-result-wide v5

    .line 246
    iput-wide v5, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mTimeStamp:J

    .line 247
    .line 248
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    iput v5, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    .line 253
    .line 254
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v13, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSyncDevice([BLjava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;)[Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    if-eqz v5, :cond_2

    .line 267
    .line 268
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iput-object v5, v12, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mUuids:[Landroid/os/ParcelUuid;

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :goto_1
    move-object/from16 v6, v22

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_2
    :goto_2
    new-instance v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 279
    .line 280
    move-object/from16 v13, p1

    .line 281
    .line 282
    invoke-direct {v5, v14, v13, v12, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    .line 284
    .line 285
    if-eqz p2, :cond_3

    .line 286
    .line 287
    if-eqz v6, :cond_3

    .line 288
    .line 289
    move-object/from16 v6, v22

    .line 290
    .line 291
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    .line 293
    .line 294
    move-object/from16 v12, v23

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :catch_0
    move-exception v0

    .line 298
    :goto_3
    move-object/from16 v12, v23

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_3
    move-object/from16 v6, v22

    .line 302
    .line 303
    move-object/from16 v12, v23

    .line 304
    .line 305
    :try_start_5
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    .line 310
    .line 311
    move-object/from16 v22, v6

    .line 312
    .line 313
    move-object/from16 v23, v12

    .line 314
    .line 315
    move v5, v15

    .line 316
    move/from16 v6, v16

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_5

    .line 322
    :catch_2
    move-exception v0

    .line 323
    goto :goto_1

    .line 324
    :cond_4
    move-object/from16 v6, v22

    .line 325
    .line 326
    move-object/from16 v12, v23

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :goto_5
    move-object/from16 v18, v4

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :catch_3
    move-exception v0

    .line 333
    move-object/from16 v6, v22

    .line 334
    .line 335
    move-object/from16 v12, v23

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_1
    move-exception v0

    .line 339
    goto :goto_8

    .line 340
    :catch_4
    move-exception v0

    .line 341
    move-object/from16 v12, v16

    .line 342
    .line 343
    move-object/from16 v6, v17

    .line 344
    .line 345
    :goto_6
    :try_start_6
    const-string v3, "getRestoredDevices :: Occurs IllegalStateException"

    .line 346
    .line 347
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 351
    .line 352
    .line 353
    if-eqz v18, :cond_5

    .line 354
    .line 355
    move-object/from16 v4, v18

    .line 356
    .line 357
    :goto_7
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 361
    .line 362
    .line 363
    :cond_5
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    .line 364
    .line 365
    if-eqz p2, :cond_7

    .line 366
    .line 367
    if-eqz v0, :cond_6

    .line 368
    .line 369
    const-string v0, "getRestoredDevices :: syncedDevices"

    .line 370
    .line 371
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    :cond_6
    return-object v6

    .line 375
    :cond_7
    if-eqz v0, :cond_8

    .line 376
    .line 377
    const-string v0, "getRestoredDevices :: restoredDevices"

    .line 378
    .line 379
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    :cond_8
    return-object v12

    .line 383
    :goto_8
    if-eqz v18, :cond_9

    .line 384
    .line 385
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 389
    .line 390
    .line 391
    :cond_9
    throw v0
.end method

.method public static getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public static getStringToken(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-string/jumbo v0, "null"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/StringTokenizer;

    .line 19
    .line 20
    const-string v1, ","

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    new-array p0, p0, [Ljava/lang/String;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    aput-object v2, p0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object p0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static hasGearManufacturerData([B)Z
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_ID:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x2

    .line 7
    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    .line 10
    aget-byte v0, p0, v1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    add-int/2addr v1, v0

    .line 16
    aget-byte p0, p0, v1

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    const-string p0, "hasGearManufacturerData : "

    .line 23
    .line 24
    const-string v1, "BluetoothUtils"

    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v0
.end method

.method public static isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "settings_ui"

    .line 2
    .line 3
    .line 4
    const-string v1, "bt_advanced_header_enabled"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v3, "BluetoothUtils"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "isAdvancedDetailsHeader: advancedEnabled is false"

    .line 17
    .line 18
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    if-nez p0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 v0, 0x6

    .line 31
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    :goto_1
    move v0, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    new-instance v4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    :goto_2
    if-eqz v0, :cond_4

    .line 49
    .line 50
    const-string v0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    .line 51
    .line 52
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    move v0, v1

    .line 58
    :goto_3
    if-eqz v0, :cond_5

    .line 59
    .line 60
    return v2

    .line 61
    :cond_5
    const/16 v0, 0x11

    .line 62
    .line 63
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "Untethered Headset"

    .line 68
    .line 69
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    const-string v0, "Watch"

    .line 76
    .line 77
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_7

    .line 82
    .line 83
    const-string v0, "Default"

    .line 84
    .line 85
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    const-string v0, "Stylus"

    .line 92
    .line 93
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    return v1

    .line 101
    :cond_7
    :goto_4
    const-string v0, "isAdvancedDetailsHeader: deviceType is "

    .line 102
    .line 103
    invoke-static {v0, p0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v2
.end method

.method public static isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_4

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    .line 20
    .line 21
    if-eqz p0, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "bluetooth_cast_mode"

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    move v0, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v0, v1

    .line 41
    :goto_0
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    invoke-direct {v2, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-direct {v0, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {v0, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_4

    .line 121
    .line 122
    return v3

    .line 123
    :cond_4
    :goto_2
    return v1
.end method

.method public static isGalaxyWatchDevice(Ljava/lang/String;Landroid/bluetooth/BluetoothClass;[B[Landroid/os/ParcelUuid;)Z
    .locals 4

    .line 1
    const/16 v0, 0x1f00

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move p1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "isGalaxyWatchDevice: uuids = "

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v3, "BluetoothUtils"

    .line 30
    .line 31
    invoke-static {p0, v0, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x704

    .line 35
    .line 36
    if-ne p1, p0, :cond_8

    .line 37
    .line 38
    const-string p0, "a49eb41e-cb06-495c-9f4f-bb80a90cdf00"

    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p3, p0}, Landroid/bluetooth/SemBluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    const-string p0, "5e8945b0-9525-11e3-a5e2-0800200c9a66"

    .line 52
    .line 53
    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p3, p0}, Landroid/bluetooth/SemBluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    return v2

    .line 64
    :cond_3
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasGearManufacturerData([B)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_8

    .line 69
    .line 70
    return v2

    .line 71
    :cond_4
    :goto_1
    const-string p1, "SM-V700"

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    const-string p1, "Samsung Galaxy Gear"

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "galaxy gear"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move p0, v1

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    :goto_2
    move p0, v2

    .line 103
    :goto_3
    if-eqz p0, :cond_7

    .line 104
    .line 105
    return v2

    .line 106
    :cond_7
    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->hasGearManufacturerData([B)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_8

    .line 111
    .line 112
    return v2

    .line 113
    :cond_8
    return v1
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xc0

    .line 12
    .line 13
    const/16 v0, 0x80

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static isSyncDevice([BLjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "BluetoothUtils"

    .line 3
    .line 4
    sget-boolean v2, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz p0, :cond_4

    .line 8
    .line 9
    new-instance v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .line 10
    .line 11
    invoke-direct {v4, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 17
    .line 18
    aget-byte v4, p0, v3

    .line 19
    .line 20
    const/16 v5, 0xff

    .line 21
    .line 22
    and-int/2addr v4, v5

    .line 23
    aget-byte p0, p0, v0

    .line 24
    .line 25
    if-eq p0, v3, :cond_0

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-eq p0, v6, :cond_0

    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    if-ne p0, v6, :cond_1

    .line 32
    .line 33
    :cond_0
    if-lt v4, v3, :cond_1

    .line 34
    .line 35
    if-le v4, v5, :cond_2

    .line 36
    .line 37
    :cond_1
    const/16 v6, 0x41

    .line 38
    .line 39
    if-ne p0, v6, :cond_4

    .line 40
    .line 41
    if-lt v4, v3, :cond_4

    .line 42
    .line 43
    if-gt v4, v5, :cond_4

    .line 44
    .line 45
    :cond_2
    if-eqz v2, :cond_3

    .line 46
    .line 47
    const-string p0, "isSyncDevice :: DeviceId"

    .line 48
    .line 49
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_3
    return v3

    .line 53
    :cond_4
    if-eqz p1, :cond_7

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-lez p0, :cond_7

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_7

    .line 66
    .line 67
    array-length p1, p0

    .line 68
    move v4, v0

    .line 69
    :goto_0
    if-ge v4, p1, :cond_7

    .line 70
    .line 71
    aget-object v5, p0, v4

    .line 72
    .line 73
    const-string v6, "e7ab2241-ca64-4a69-ac02-05f5c6fe2d62"

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_6

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    const-string p0, "isSyncDevice :: UUID"

    .line 84
    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_5
    return v3

    .line 89
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    if-eqz v2, :cond_8

    .line 93
    .line 94
    const-string p0, "isSyncDevice :: It is not synced device"

    .line 95
    .line 96
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_8
    return v0
.end method

.method public static makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v1, "BluetoothUtils"

    .line 21
    .line 22
    const-string v2, "failed makeParcelUuids"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public static setQuickPannelOn(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setQuickPannelOn :: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", from Dex :: false"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "BluetoothUtils"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    sput-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mQuickPannelOn:Z

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    sput-boolean p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mDexQuickPannelOn:Z

    .line 30
    .line 31
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 p0, 0x0

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    div-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    mul-int/lit8 v4, v3, 0x2

    .line 23
    .line 24
    add-int/lit8 v5, v4, 0x2

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/16 v5, 0x10

    .line 31
    .line 32
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    int-to-byte v4, v4

    .line 37
    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const-string/jumbo v1, "stringToByte : Wrong format - "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v1, "BluetoothUtils"

    .line 50
    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    return-object v2

    .line 56
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x2

    .line 10
    const-string v3, "device_name"

    .line 11
    .line 12
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    const-string/jumbo p0, "updateDeviceName :: change device name to "

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "BluetoothUtils"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
