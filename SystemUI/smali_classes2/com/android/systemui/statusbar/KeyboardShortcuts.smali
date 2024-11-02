.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mShowTime:J

.field static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;

.field mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field public mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v4, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    .line 34
    .line 35
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    .line 39
    .line 40
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 44
    .line 45
    const v5, 0x1030223

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-class v4, Landroid/view/WindowManager;

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/view/WindowManager;

    .line 68
    .line 69
    :goto_0
    const p2, 0x7f13074f

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    const v5, 0x7f130745

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2, v0, v4, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v4, 0x4

    .line 81
    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const p2, 0x7f13074c

    .line 85
    .line 86
    .line 87
    const/16 v5, 0x13

    .line 88
    .line 89
    const v6, 0x7f130749

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p2, v0, v5, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const/16 v6, 0x14

    .line 97
    .line 98
    invoke-virtual {v0, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const p2, 0x7f13074a

    .line 102
    .line 103
    .line 104
    const/16 v6, 0x15

    .line 105
    .line 106
    const v7, 0x7f13074b

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p2, v0, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const/16 v6, 0x16

    .line 114
    .line 115
    invoke-virtual {v0, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    const p2, 0x7f130748

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const/16 v7, 0x17

    .line 126
    .line 127
    invoke-virtual {v0, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/16 p2, 0x38

    .line 131
    .line 132
    const-string v7, "."

    .line 133
    .line 134
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const p2, 0x7f13075e

    .line 138
    .line 139
    .line 140
    const/16 v8, 0x3d

    .line 141
    .line 142
    const v9, 0x7f13075d

    .line 143
    .line 144
    .line 145
    invoke-static {p1, p2, v0, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const/16 v8, 0x3e

    .line 150
    .line 151
    invoke-virtual {v0, v8, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const p2, 0x7f13074d

    .line 155
    .line 156
    .line 157
    const/16 v8, 0x42

    .line 158
    .line 159
    const v9, 0x7f130746

    .line 160
    .line 161
    .line 162
    invoke-static {p1, p2, v0, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    const/16 v10, 0x43

    .line 167
    .line 168
    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    const v9, 0x7f130753

    .line 172
    .line 173
    .line 174
    const/16 v11, 0x55

    .line 175
    .line 176
    const v12, 0x7f130756

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    const/16 v11, 0x56

    .line 184
    .line 185
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    const v9, 0x7f130752

    .line 189
    .line 190
    .line 191
    const/16 v11, 0x57

    .line 192
    .line 193
    const v12, 0x7f130754

    .line 194
    .line 195
    .line 196
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    const/16 v11, 0x58

    .line 201
    .line 202
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    const v9, 0x7f130755

    .line 206
    .line 207
    .line 208
    const/16 v11, 0x59

    .line 209
    .line 210
    const v12, 0x7f130751

    .line 211
    .line 212
    .line 213
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    const/16 v11, 0x5a

    .line 218
    .line 219
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    const v9, 0x7f13075c

    .line 223
    .line 224
    .line 225
    const/16 v11, 0x5c

    .line 226
    .line 227
    const v12, 0x7f13075b

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    const/16 v11, 0x5d

    .line 235
    .line 236
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const-string v9, "A"

    .line 240
    .line 241
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    const v11, 0x7f130747

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    const/16 v12, 0x60

    .line 253
    .line 254
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    const-string v9, "B"

    .line 258
    .line 259
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    const/16 v12, 0x61

    .line 268
    .line 269
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const-string v9, "C"

    .line 273
    .line 274
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    const/16 v12, 0x62

    .line 283
    .line 284
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    const-string v9, "X"

    .line 288
    .line 289
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    const/16 v12, 0x63

    .line 298
    .line 299
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    const-string v9, "Y"

    .line 303
    .line 304
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    const/16 v12, 0x64

    .line 313
    .line 314
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    const-string v9, "Z"

    .line 318
    .line 319
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    const/16 v12, 0x65

    .line 328
    .line 329
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    const-string v9, "L1"

    .line 333
    .line 334
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    const/16 v12, 0x66

    .line 343
    .line 344
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    const-string v9, "R1"

    .line 348
    .line 349
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    const/16 v12, 0x67

    .line 358
    .line 359
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    const-string v9, "L2"

    .line 363
    .line 364
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    const/16 v12, 0x68

    .line 373
    .line 374
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    const-string v9, "R2"

    .line 378
    .line 379
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    const/16 v12, 0x69

    .line 388
    .line 389
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    const-string v9, "Start"

    .line 393
    .line 394
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    const/16 v12, 0x6c

    .line 403
    .line 404
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    const-string v9, "Select"

    .line 408
    .line 409
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    const/16 v12, 0x6d

    .line 418
    .line 419
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    const-string v9, "Mode"

    .line 423
    .line 424
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    const/16 v11, 0x6e

    .line 433
    .line 434
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    const v9, 0x7f13074e

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    const/16 v11, 0x70

    .line 445
    .line 446
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    const/16 v9, 0x6f

    .line 450
    .line 451
    const-string v11, "Esc"

    .line 452
    .line 453
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    const/16 v9, 0x78

    .line 457
    .line 458
    const-string v11, "SysRq"

    .line 459
    .line 460
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    const/16 v9, 0x79

    .line 464
    .line 465
    const-string v11, "Break"

    .line 466
    .line 467
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    const/16 v9, 0x74

    .line 471
    .line 472
    const-string v11, "Scroll Lock"

    .line 473
    .line 474
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    const v9, 0x7f130758

    .line 478
    .line 479
    .line 480
    const/16 v11, 0x7a

    .line 481
    .line 482
    const v12, 0x7f130757

    .line 483
    .line 484
    .line 485
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v9

    .line 489
    const/16 v11, 0x7b

    .line 490
    .line 491
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    const v9, 0x7f130750

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    const/16 v11, 0x7c

    .line 502
    .line 503
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    const/16 v9, 0x83

    .line 507
    .line 508
    const-string v11, "F1"

    .line 509
    .line 510
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    const/16 v9, 0x84

    .line 514
    .line 515
    const-string v11, "F2"

    .line 516
    .line 517
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    const/16 v9, 0x85

    .line 521
    .line 522
    const-string v11, "F3"

    .line 523
    .line 524
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    const/16 v9, 0x86

    .line 528
    .line 529
    const-string v11, "F4"

    .line 530
    .line 531
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    const/16 v9, 0x87

    .line 535
    .line 536
    const-string v11, "F5"

    .line 537
    .line 538
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    const/16 v9, 0x88

    .line 542
    .line 543
    const-string v11, "F6"

    .line 544
    .line 545
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    const/16 v9, 0x89

    .line 549
    .line 550
    const-string v11, "F7"

    .line 551
    .line 552
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    const/16 v9, 0x8a

    .line 556
    .line 557
    const-string v11, "F8"

    .line 558
    .line 559
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    const/16 v9, 0x8b

    .line 563
    .line 564
    const-string v11, "F9"

    .line 565
    .line 566
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    const/16 v9, 0x8c

    .line 570
    .line 571
    const-string v11, "F10"

    .line 572
    .line 573
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    const/16 v9, 0x8d

    .line 577
    .line 578
    const-string v11, "F11"

    .line 579
    .line 580
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    const/16 v9, 0x8e

    .line 584
    .line 585
    const-string v11, "F12"

    .line 586
    .line 587
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    const v9, 0x7f130759

    .line 591
    .line 592
    .line 593
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    const/16 v11, 0x8f

    .line 598
    .line 599
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    const-string v9, "0"

    .line 603
    .line 604
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    const v11, 0x7f13075a

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    const/16 v12, 0x90

    .line 616
    .line 617
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    const-string v9, "1"

    .line 621
    .line 622
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v9

    .line 626
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    const/16 v12, 0x91

    .line 631
    .line 632
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    const-string v9, "2"

    .line 636
    .line 637
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v9

    .line 641
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v9

    .line 645
    const/16 v12, 0x92

    .line 646
    .line 647
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    const-string v9, "3"

    .line 651
    .line 652
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v9

    .line 660
    const/16 v12, 0x93

    .line 661
    .line 662
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    const-string v9, "4"

    .line 666
    .line 667
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v9

    .line 671
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v9

    .line 675
    const/16 v12, 0x94

    .line 676
    .line 677
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    const-string v9, "5"

    .line 681
    .line 682
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v9

    .line 686
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v9

    .line 690
    const/16 v12, 0x95

    .line 691
    .line 692
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    const-string v9, "6"

    .line 696
    .line 697
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v9

    .line 701
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v9

    .line 705
    const/16 v12, 0x96

    .line 706
    .line 707
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    const-string v9, "7"

    .line 711
    .line 712
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v9

    .line 720
    const/16 v12, 0x97

    .line 721
    .line 722
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    const-string v9, "8"

    .line 726
    .line 727
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v9

    .line 731
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v9

    .line 735
    const/16 v12, 0x98

    .line 736
    .line 737
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    const-string v9, "9"

    .line 741
    .line 742
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v9

    .line 746
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v9

    .line 750
    const/16 v12, 0x99

    .line 751
    .line 752
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    const-string v9, "/"

    .line 756
    .line 757
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v9

    .line 761
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v9

    .line 765
    const/16 v12, 0x9a

    .line 766
    .line 767
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    const-string v9, "*"

    .line 771
    .line 772
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v9

    .line 776
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v9

    .line 780
    const/16 v12, 0x9b

    .line 781
    .line 782
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    const-string v9, "-"

    .line 786
    .line 787
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    const/16 v12, 0x9c

    .line 796
    .line 797
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    const-string v9, "+"

    .line 801
    .line 802
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v9

    .line 806
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v9

    .line 810
    const/16 v12, 0x9d

    .line 811
    .line 812
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v7

    .line 819
    invoke-virtual {p1, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v7

    .line 823
    const/16 v9, 0x9e

    .line 824
    .line 825
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    const-string v7, ","

    .line 829
    .line 830
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    invoke-virtual {p1, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v7

    .line 838
    const/16 v9, 0x9f

    .line 839
    .line 840
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object p2

    .line 847
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object p2

    .line 851
    invoke-virtual {p1, v11, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object p2

    .line 855
    const/16 v7, 0xa0

    .line 856
    .line 857
    invoke-virtual {v0, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    const-string p2, "="

    .line 861
    .line 862
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object p2

    .line 866
    invoke-virtual {p1, v11, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object p2

    .line 870
    const/16 v7, 0xa1

    .line 871
    .line 872
    invoke-virtual {v0, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 873
    .line 874
    .line 875
    const-string p2, "("

    .line 876
    .line 877
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object p2

    .line 881
    invoke-virtual {p1, v11, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object p2

    .line 885
    const/16 v7, 0xa2

    .line 886
    .line 887
    invoke-virtual {v0, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    const-string p2, ")"

    .line 891
    .line 892
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object p2

    .line 896
    invoke-virtual {p1, v11, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object p2

    .line 900
    const/16 v7, 0xa3

    .line 901
    .line 902
    invoke-virtual {v0, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 903
    .line 904
    .line 905
    const/16 p2, 0xd3

    .line 906
    .line 907
    const-string/jumbo v7, "\u534a\u89d2/\u5168\u89d2"

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 911
    .line 912
    .line 913
    const/16 p2, 0xd4

    .line 914
    .line 915
    const-string/jumbo v7, "\u82f1\u6570"

    .line 916
    .line 917
    .line 918
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 919
    .line 920
    .line 921
    const/16 p2, 0xd5

    .line 922
    .line 923
    const-string/jumbo v7, "\u7121\u5909\u63db"

    .line 924
    .line 925
    .line 926
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 927
    .line 928
    .line 929
    const/16 p2, 0xd6

    .line 930
    .line 931
    const-string/jumbo v7, "\u5909\u63db"

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    const/16 p2, 0xd7

    .line 938
    .line 939
    const-string/jumbo v7, "\u304b\u306a"

    .line 940
    .line 941
    .line 942
    invoke-virtual {v0, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    const-string p2, "Meta"

    .line 946
    .line 947
    const/high16 v0, 0x10000

    .line 948
    .line 949
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 950
    .line 951
    .line 952
    const/16 p2, 0x1000

    .line 953
    .line 954
    const-string v7, "Ctrl"

    .line 955
    .line 956
    invoke-virtual {v1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 957
    .line 958
    .line 959
    const/4 p2, 0x2

    .line 960
    const-string v7, "Alt"

    .line 961
    .line 962
    invoke-virtual {v1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    const/4 p2, 0x1

    .line 966
    const-string v7, "Shift"

    .line 967
    .line 968
    invoke-virtual {v1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 969
    .line 970
    .line 971
    const-string p2, "Sym"

    .line 972
    .line 973
    invoke-virtual {v1, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    const/16 p2, 0x8

    .line 977
    .line 978
    const-string v4, "Fn"

    .line 979
    .line 980
    invoke-virtual {v1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    const p2, 0x7f08093f

    .line 984
    .line 985
    .line 986
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 987
    .line 988
    .line 989
    move-result-object p2

    .line 990
    invoke-virtual {v2, v10, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    const p2, 0x7f080941

    .line 994
    .line 995
    .line 996
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 997
    .line 998
    .line 999
    move-result-object p2

    .line 1000
    invoke-virtual {v2, v8, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    .line 1002
    .line 1003
    const p2, 0x7f080945

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1007
    .line 1008
    .line 1009
    move-result-object p2

    .line 1010
    invoke-virtual {v2, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    .line 1012
    .line 1013
    const p2, 0x7f080944

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p2

    .line 1020
    invoke-virtual {v2, v6, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    const p2, 0x7f080940

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1027
    .line 1028
    .line 1029
    move-result-object p2

    .line 1030
    const/16 v1, 0x14

    .line 1031
    .line 1032
    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    const p2, 0x7f080942

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1039
    .line 1040
    .line 1041
    move-result-object p2

    .line 1042
    const/16 v1, 0x15

    .line 1043
    .line 1044
    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    const p2, 0x7f080943

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p2

    .line 1054
    invoke-virtual {v3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    new-instance p2, Lcom/android/systemui/statusbar/KshPresenter;

    .line 1058
    .line 1059
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/KshPresenter;-><init>(Landroid/content/Context;)V

    .line 1060
    .line 1061
    .line 1062
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    .line 1063
    .line 1064
    return-void
.end method

.method public static dismiss()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v2, 0x1f4

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismissKeyboardShortcuts()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public static show(ILandroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x1f4

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sput-wide v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mShowTime:J

    .line 17
    .line 18
    const/16 v0, 0x1f4

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 52
    .line 53
    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public static toggle(ILandroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(ILandroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2
.end method


# virtual methods
.method public final dismissKeyboardShortcuts()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 6
    .line 7
    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v2, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    .line 39
    .line 40
    return-void
.end method

.method public showKeyboardShortcuts(I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKshPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;

    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, v0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 54
    .line 55
    if-eq p1, v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_0
    array-length v5, v3

    .line 76
    if-ge v4, v5, :cond_2

    .line 77
    .line 78
    aget v5, v3, v4

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5}, Landroid/view/InputDevice;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eq v6, v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 107
    .line 108
    iput-object v1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 109
    .line 110
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    const-string/jumbo v1, "window"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/view/WindowManager;

    .line 120
    .line 121
    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$3;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KshPresenter$3;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
