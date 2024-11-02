.class public final Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field public mManufacturerRawData:[B

.field public mManufacturerType:I

.field public final mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 9
    .line 10
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    aget-byte v3, p0, v2

    .line 18
    .line 19
    and-int/lit16 v4, v3, 0xf0

    .line 20
    .line 21
    shr-int/lit8 v4, v4, 0x4

    .line 22
    .line 23
    const-string v5, "0123456789abcdef"

    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v3, v3, 0xf

    .line 33
    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final getDeviceIcon()I
    .locals 12

    .line 1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 2
    .line 3
    const v1, 0x7f080bb4

    .line 4
    .line 5
    .line 6
    const v2, 0x7f080bef

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eq v0, v6, :cond_11

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    if-eq v0, v5, :cond_0

    .line 18
    .line 19
    if-eq v0, v7, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    iget-byte v0, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 24
    .line 25
    iget-byte v3, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const v8, 0x7f080bc1

    .line 33
    .line 34
    .line 35
    const v9, 0x7f080bea

    .line 36
    .line 37
    .line 38
    const v10, 0x7f080bec

    .line 39
    .line 40
    .line 41
    const v11, 0x7f080be2

    .line 42
    .line 43
    .line 44
    packed-switch v0, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    :pswitch_0
    move v1, v4

    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :pswitch_1
    const v1, 0x7f080bdd

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :pswitch_2
    if-eq v3, v6, :cond_1

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_1
    move v1, v9

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :pswitch_3
    if-eq v3, v6, :cond_3

    .line 63
    .line 64
    if-eq v3, v5, :cond_2

    .line 65
    .line 66
    const v1, 0x7f080baf

    .line 67
    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_2
    const v1, 0x7f080bb0

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_3
    const v1, 0x7f080bdf

    .line 77
    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :pswitch_4
    const v1, 0x7f080be6

    .line 82
    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :pswitch_5
    const v1, 0x7f080bbb

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :pswitch_6
    if-eq v3, v6, :cond_4

    .line 92
    .line 93
    const v1, 0x7f080be9

    .line 94
    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_4
    const v1, 0x7f080bbe

    .line 99
    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :pswitch_7
    const v1, 0x7f080bb6

    .line 104
    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :pswitch_8
    const v1, 0x7f080bde

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :pswitch_9
    const v1, 0x7f080bd1

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :pswitch_a
    const v1, 0x7f080bce

    .line 119
    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :pswitch_b
    const v1, 0x7f080bd3

    .line 124
    .line 125
    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :pswitch_c
    const v1, 0x7f080bc0

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_d
    const v1, 0x7f080bbf

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :pswitch_e
    const v1, 0x7f080bb9

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :pswitch_f
    const v1, 0x7f080bba

    .line 144
    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :pswitch_10
    const v1, 0x7f080be0

    .line 149
    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :pswitch_11
    const v1, 0x7f080bc6

    .line 154
    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :goto_0
    :pswitch_12
    move v1, v10

    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :pswitch_13
    if-eq v3, v6, :cond_5

    .line 162
    .line 163
    const v1, 0x7f080be4

    .line 164
    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :cond_5
    :goto_1
    move v1, v8

    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :pswitch_14
    if-eq v3, v5, :cond_9

    .line 172
    .line 173
    const v1, 0x7f080bc4

    .line 174
    .line 175
    .line 176
    const v0, 0x7f080beb

    .line 177
    .line 178
    .line 179
    if-eq v3, v7, :cond_7

    .line 180
    .line 181
    const/4 p0, 0x4

    .line 182
    if-eq v3, p0, :cond_6

    .line 183
    .line 184
    const/4 p0, 0x5

    .line 185
    if-eq v3, p0, :cond_10

    .line 186
    .line 187
    const v1, 0x7f080bcc

    .line 188
    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_6
    move v1, v0

    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 198
    .line 199
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 200
    .line 201
    if-eqz p0, :cond_8

    .line 202
    .line 203
    array-length v2, p0

    .line 204
    if-le v2, v6, :cond_8

    .line 205
    .line 206
    aget-byte v2, p0, v4

    .line 207
    .line 208
    if-ne v2, v6, :cond_8

    .line 209
    .line 210
    aget-byte p0, p0, v6

    .line 211
    .line 212
    and-int/lit16 p0, p0, 0xff

    .line 213
    .line 214
    const/16 v2, 0x4d

    .line 215
    .line 216
    if-lt p0, v2, :cond_8

    .line 217
    .line 218
    const/16 v2, 0x62

    .line 219
    .line 220
    if-gt p0, v2, :cond_8

    .line 221
    .line 222
    move v4, v6

    .line 223
    :cond_8
    if-eqz v4, :cond_6

    .line 224
    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    :cond_9
    const v1, 0x7f080bd5

    .line 228
    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :pswitch_15
    const v1, 0x7f080bd9

    .line 233
    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :pswitch_16
    const v1, 0x7f080be3

    .line 238
    .line 239
    .line 240
    goto/16 :goto_3

    .line 241
    .line 242
    :pswitch_17
    const v1, 0x7f080bbd

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :pswitch_18
    const v1, 0x7f080bda

    .line 248
    .line 249
    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :pswitch_19
    const v1, 0x7f080bd7

    .line 253
    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :pswitch_1a
    const v1, 0x7f080bb1

    .line 258
    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :pswitch_1b
    const v1, 0x7f080be7

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :pswitch_1c
    const v1, 0x7f080bb2

    .line 268
    .line 269
    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :pswitch_1d
    const v1, 0x7f080bc7

    .line 273
    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :pswitch_1e
    const v1, 0x7f080bc3

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :pswitch_1f
    const v1, 0x7f080bee

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :pswitch_20
    const v1, 0x7f080bdb

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :goto_2
    :pswitch_21
    move v1, v11

    .line 290
    goto :goto_3

    .line 291
    :pswitch_22
    const v1, 0x7f080be5

    .line 292
    .line 293
    .line 294
    if-eq v3, v6, :cond_10

    .line 295
    .line 296
    if-eq v3, v5, :cond_a

    .line 297
    .line 298
    const/4 p0, 0x6

    .line 299
    if-eq v3, p0, :cond_10

    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_a
    const p0, 0x7f080bb3

    .line 304
    .line 305
    .line 306
    move v1, p0

    .line 307
    goto :goto_3

    .line 308
    :pswitch_23
    if-eq v3, v5, :cond_b

    .line 309
    .line 310
    if-eq v3, v7, :cond_1

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :cond_b
    const v1, 0x7f080be1

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :pswitch_24
    if-eq v3, v6, :cond_e

    .line 319
    .line 320
    if-eq v3, v5, :cond_d

    .line 321
    .line 322
    if-eq v3, v7, :cond_c

    .line 323
    .line 324
    const v1, 0x7f080bac

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_c
    const v1, 0x7f080bd0

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_d
    const v1, 0x7f080bc8

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_e
    const v1, 0x7f080bd6

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :pswitch_25
    if-eq v3, v6, :cond_f

    .line 341
    .line 342
    const v1, 0x7f080bd2

    .line 343
    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_f
    const v1, 0x7f080bd8

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :pswitch_26
    move v1, v2

    .line 351
    goto :goto_3

    .line 352
    :pswitch_27
    const v1, 0x7f080be8

    .line 353
    .line 354
    .line 355
    goto :goto_3

    .line 356
    :pswitch_28
    const v1, 0x7f080bd4

    .line 357
    .line 358
    .line 359
    :cond_10
    :goto_3
    :pswitch_29
    return v1

    .line 360
    :cond_11
    iget-object p0, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 361
    .line 362
    if-eqz p0, :cond_17

    .line 363
    .line 364
    aget-byte v0, p0, v4

    .line 365
    .line 366
    if-nez v0, :cond_17

    .line 367
    .line 368
    aget-byte p0, p0, v6

    .line 369
    .line 370
    and-int/lit16 p0, p0, 0xff

    .line 371
    .line 372
    const/16 v0, 0xfb

    .line 373
    .line 374
    if-ne p0, v0, :cond_12

    .line 375
    .line 376
    const p0, 0x7f080bed

    .line 377
    .line 378
    .line 379
    return p0

    .line 380
    :cond_12
    const/16 v0, 0xfe

    .line 381
    .line 382
    if-eq p0, v0, :cond_16

    .line 383
    .line 384
    const/16 v0, 0xdb

    .line 385
    .line 386
    if-ne p0, v0, :cond_13

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :cond_13
    iget-boolean p0, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    .line 390
    .line 391
    if-eqz p0, :cond_17

    .line 392
    .line 393
    iget-byte p0, v3, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 394
    .line 395
    if-ltz p0, :cond_17

    .line 396
    .line 397
    if-nez p0, :cond_14

    .line 398
    .line 399
    return v2

    .line 400
    :cond_14
    if-ne p0, v6, :cond_15

    .line 401
    .line 402
    const p0, 0x7f080bdc

    .line 403
    .line 404
    .line 405
    return p0

    .line 406
    :cond_15
    if-ne p0, v5, :cond_17

    .line 407
    .line 408
    return v1

    .line 409
    :cond_16
    :goto_4
    const p0, 0x7f080bc9

    .line 410
    .line 411
    .line 412
    return p0

    .line 413
    :cond_17
    :goto_5
    return v4

    .line 414
    nop

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_26
        :pswitch_29
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isSupportFeature(B)Z
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_FEATURES:I

    .line 13
    .line 14
    if-le v0, v1, :cond_1

    .line 15
    .line 16
    aget-byte p0, p0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    and-int/2addr p0, p1

    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final updateDeviceInfo([B)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v6, 0x10

    .line 14
    .line 15
    const/4 v7, 0x4

    .line 16
    const/16 v8, 0x9

    .line 17
    .line 18
    if-ge v1, v8, :cond_1

    .line 19
    .line 20
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_1
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_SERVICE_ID:I

    .line 25
    .line 26
    aget-byte v9, p1, v1

    .line 27
    .line 28
    if-nez v9, :cond_2

    .line 29
    .line 30
    add-int/2addr v1, v3

    .line 31
    aget-byte v1, p1, v1

    .line 32
    .line 33
    if-ne v1, v4, :cond_2

    .line 34
    .line 35
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_SERVICE_ID:I

    .line 39
    .line 40
    aget-byte v1, p1, v1

    .line 41
    .line 42
    if-ne v1, v8, :cond_3

    .line 43
    .line 44
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    .line 45
    .line 46
    aget-byte v1, p1, v1

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_SERVICE_ID:I

    .line 54
    .line 55
    aget-byte v1, p1, v1

    .line 56
    .line 57
    if-ne v1, v8, :cond_9

    .line 58
    .line 59
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    .line 60
    .line 61
    aget-byte v1, p1, v1

    .line 62
    .line 63
    if-ne v1, v4, :cond_9

    .line 64
    .line 65
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 66
    .line 67
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_FEATURES:I

    .line 68
    .line 69
    aget-byte v8, p1, v1

    .line 70
    .line 71
    add-int/2addr v1, v3

    .line 72
    move v9, v5

    .line 73
    :goto_0
    const/4 v10, 0x5

    .line 74
    if-ge v9, v10, :cond_a

    .line 75
    .line 76
    shl-int v10, v3, v9

    .line 77
    .line 78
    int-to-byte v10, v10

    .line 79
    and-int/2addr v10, v8

    .line 80
    int-to-byte v10, v10

    .line 81
    if-eq v10, v3, :cond_8

    .line 82
    .line 83
    if-eq v10, v4, :cond_7

    .line 84
    .line 85
    if-eq v10, v7, :cond_6

    .line 86
    .line 87
    const/16 v11, 0x8

    .line 88
    .line 89
    if-eq v10, v11, :cond_5

    .line 90
    .line 91
    if-eq v10, v6, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 95
    .line 96
    aget-byte v10, p1, v1

    .line 97
    .line 98
    add-int/2addr v10, v3

    .line 99
    sput v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 103
    .line 104
    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_CONNECTIVITY:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    .line 108
    .line 109
    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_DEVICE:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 113
    .line 114
    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_PROXIMITY:I

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PACKET_NUMBER:I

    .line 118
    .line 119
    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_PACKET_NUMBER:I

    .line 120
    .line 121
    :goto_1
    add-int/2addr v1, v10

    .line 122
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_9
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 126
    .line 127
    :cond_a
    :goto_3
    :try_start_0
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 128
    .line 129
    if-eq v1, v4, :cond_d

    .line 130
    .line 131
    if-eq v1, v2, :cond_b

    .line 132
    .line 133
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_b
    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_c

    .line 141
    .line 142
    array-length v1, p1

    .line 143
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 144
    .line 145
    sget v9, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_INFO:I

    .line 146
    .line 147
    add-int/2addr v8, v9

    .line 148
    if-le v1, v8, :cond_c

    .line 149
    .line 150
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 151
    .line 152
    aget-byte v8, p1, v1

    .line 153
    .line 154
    if-ne v8, v3, :cond_c

    .line 155
    .line 156
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_INFO:I

    .line 157
    .line 158
    add-int/2addr v1, v8

    .line 159
    aget-byte v1, p1, v1

    .line 160
    .line 161
    iput v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_c
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_d
    array-length v1, p1

    .line 168
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_INFO:I

    .line 169
    .line 170
    if-le v1, v8, :cond_e

    .line 171
    .line 172
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    .line 173
    .line 174
    aget-byte v1, p1, v1

    .line 175
    .line 176
    and-int/2addr v1, v3

    .line 177
    if-ne v1, v3, :cond_e

    .line 178
    .line 179
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_INFO:I

    .line 180
    .line 181
    aget-byte v1, p1, v1

    .line 182
    .line 183
    iput v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_e
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :catch_0
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 190
    .line 191
    :goto_4
    :try_start_1
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 192
    .line 193
    if-eq v1, v3, :cond_11

    .line 194
    .line 195
    if-eq v1, v4, :cond_10

    .line 196
    .line 197
    if-eq v1, v2, :cond_f

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_f
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_12

    .line 205
    .line 206
    array-length v1, p1

    .line 207
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    .line 208
    .line 209
    if-le v1, v8, :cond_12

    .line 210
    .line 211
    aget-byte v1, p1, v8

    .line 212
    .line 213
    iput-boolean v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    .line 214
    .line 215
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_10
    array-length v1, p1

    .line 219
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_TYPE:I

    .line 220
    .line 221
    if-le v1, v8, :cond_12

    .line 222
    .line 223
    aget-byte v1, p1, v8

    .line 224
    .line 225
    iput-boolean v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    .line 226
    .line 227
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_11
    array-length v1, p1

    .line 231
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_TYPE:I

    .line 232
    .line 233
    if-le v1, v8, :cond_12

    .line 234
    .line 235
    aget-byte v1, p1, v8

    .line 236
    .line 237
    iput-boolean v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    .line 238
    .line 239
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :catch_1
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 244
    .line 245
    .line 246
    :cond_12
    :goto_5
    :try_start_2
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 247
    .line 248
    if-eq v1, v4, :cond_14

    .line 249
    .line 250
    if-eq v1, v2, :cond_13

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_13
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_15

    .line 258
    .line 259
    array-length v1, p1

    .line 260
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    .line 261
    .line 262
    sget v9, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_ICON:I

    .line 263
    .line 264
    add-int/2addr v8, v9

    .line 265
    if-le v1, v8, :cond_15

    .line 266
    .line 267
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    .line 268
    .line 269
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_ICON:I

    .line 270
    .line 271
    add-int/2addr v1, v8

    .line 272
    aget-byte v1, p1, v1

    .line 273
    .line 274
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_14
    array-length v1, p1

    .line 278
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_ICON:I

    .line 279
    .line 280
    if-le v1, v8, :cond_15

    .line 281
    .line 282
    aget-byte v1, p1, v8

    .line 283
    .line 284
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :catch_2
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    :cond_15
    :goto_6
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 292
    .line 293
    if-eq v1, v4, :cond_17

    .line 294
    .line 295
    if-eq v1, v2, :cond_16

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_16
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_18

    .line 303
    .line 304
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    .line 305
    .line 306
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    .line 307
    .line 308
    add-int/2addr v1, v7

    .line 309
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    .line 310
    .line 311
    invoke-static {p1, v1, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_17
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    .line 316
    .line 317
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    .line 318
    .line 319
    invoke-static {p1, v1, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    .line 321
    .line 322
    :cond_18
    :goto_7
    :try_start_3
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 323
    .line 324
    if-eq v1, v4, :cond_1a

    .line 325
    .line 326
    if-eq v1, v2, :cond_19

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_19
    invoke-virtual {p0, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_1b

    .line 334
    .line 335
    array-length v1, p1

    .line 336
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 337
    .line 338
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    .line 339
    .line 340
    add-int/2addr v7, v8

    .line 341
    if-le v1, v7, :cond_1b

    .line 342
    .line 343
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 344
    .line 345
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    .line 346
    .line 347
    add-int/2addr v1, v7

    .line 348
    aget-byte v1, p1, v1

    .line 349
    .line 350
    and-int/2addr v1, v3

    .line 351
    if-ne v1, v3, :cond_1b

    .line 352
    .line 353
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 354
    .line 355
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    .line 356
    .line 357
    add-int/2addr v1, v7

    .line 358
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    .line 359
    .line 360
    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_1a
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    .line 365
    .line 366
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    .line 367
    .line 368
    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 369
    .line 370
    .line 371
    goto :goto_8

    .line 372
    :catch_3
    move-exception v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 374
    .line 375
    .line 376
    :cond_1b
    :goto_8
    :try_start_4
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 377
    .line 378
    if-eq v1, v3, :cond_1e

    .line 379
    .line 380
    if-eq v1, v4, :cond_1d

    .line 381
    .line 382
    if-eq v1, v2, :cond_1c

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_1c
    invoke-virtual {p0, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_1f

    .line 390
    .line 391
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 392
    .line 393
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 394
    .line 395
    add-int/2addr v1, v7

    .line 396
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 397
    .line 398
    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_1d
    array-length v1, p1

    .line 403
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    .line 404
    .line 405
    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 406
    .line 407
    add-int/2addr v7, v8

    .line 408
    if-le v1, v7, :cond_1f

    .line 409
    .line 410
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    .line 411
    .line 412
    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 413
    .line 414
    add-int/2addr v1, v7

    .line 415
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 416
    .line 417
    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_1e
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_ID:I

    .line 422
    .line 423
    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 424
    .line 425
    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :catch_4
    move-exception v1

    .line 430
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 431
    .line 432
    .line 433
    :cond_1f
    :goto_9
    :try_start_5
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 434
    .line 435
    if-eq v1, v3, :cond_22

    .line 436
    .line 437
    if-eq v1, v4, :cond_21

    .line 438
    .line 439
    if-eq v1, v2, :cond_20

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_20
    invoke-virtual {p0, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_23

    .line 447
    .line 448
    array-length v1, p1

    .line 449
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 450
    .line 451
    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 452
    .line 453
    add-int/2addr v2, v3

    .line 454
    if-le v1, v2, :cond_23

    .line 455
    .line 456
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 457
    .line 458
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 459
    .line 460
    add-int/2addr v1, v2

    .line 461
    aget-byte p1, p1, v1

    .line 462
    .line 463
    iput-byte p1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    .line 464
    .line 465
    goto :goto_a

    .line 466
    :cond_21
    array-length v1, p1

    .line 467
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    .line 468
    .line 469
    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 470
    .line 471
    add-int/2addr v2, v3

    .line 472
    if-le v1, v2, :cond_23

    .line 473
    .line 474
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    .line 475
    .line 476
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 477
    .line 478
    add-int/2addr v1, v2

    .line 479
    aget-byte p1, p1, v1

    .line 480
    .line 481
    iput-byte p1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_22
    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 485
    .line 486
    if-eqz v1, :cond_23

    .line 487
    .line 488
    aget-byte v2, v1, v5

    .line 489
    .line 490
    if-nez v2, :cond_23

    .line 491
    .line 492
    aget-byte v1, v1, v3

    .line 493
    .line 494
    const/16 v2, 0xff

    .line 495
    .line 496
    and-int/2addr v1, v2

    .line 497
    const/16 v3, 0x90

    .line 498
    .line 499
    if-lt v1, v3, :cond_23

    .line 500
    .line 501
    if-gt v1, v2, :cond_23

    .line 502
    .line 503
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 504
    .line 505
    array-length v1, v1

    .line 506
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_BLUETOOTH_TYPE:I

    .line 507
    .line 508
    if-le v1, v2, :cond_23

    .line 509
    .line 510
    array-length v1, p1

    .line 511
    if-le v1, v2, :cond_23

    .line 512
    .line 513
    aget-byte p1, p1, v2

    .line 514
    .line 515
    iput-byte p1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    .line 516
    .line 517
    goto :goto_a

    .line 518
    :catch_5
    move-exception p1

    .line 519
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 520
    .line 521
    .line 522
    :cond_23
    :goto_a
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    .line 523
    .line 524
    if-eqz p1, :cond_24

    .line 525
    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v1, "updateDeviceInfo :: describe data = "

    .line 529
    .line 530
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .line 537
    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    const-string v3, "[ManufacturerType] "

    .line 541
    .line 542
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 546
    .line 547
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    new-instance p0, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v2, ", [TxPower] "

    .line 560
    .line 561
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 565
    .line 566
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p0

    .line 573
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    new-instance p0, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    const-string v2, ", [DeviceCategory] "

    .line 579
    .line 580
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    iget-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 584
    .line 585
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    new-instance p0, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    const-string v2, ", [DeviceIconIndex] "

    .line 598
    .line 599
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-byte v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    .line 603
    .line 604
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object p0

    .line 611
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    new-instance p0, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v2, ", [DevicePrefix] "

    .line 617
    .line 618
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    .line 622
    .line 623
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object p0

    .line 630
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    new-instance p0, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    const-string v2, ", [Contact] "

    .line 636
    .line 637
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    .line 641
    .line 642
    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    .line 650
    .line 651
    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object p0

    .line 662
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    new-instance p0, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    const-string v2, ", [Device ID] "

    .line 668
    .line 669
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 673
    .line 674
    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    new-instance p0, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    const-string v2, ", [BT Type] "

    .line 691
    .line 692
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-byte v0, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    .line 696
    .line 697
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p0

    .line 704
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p0

    .line 711
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object p0

    .line 718
    const-string p1, "ManufacturerData"

    .line 719
    .line 720
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    :cond_24
    return-void
.end method
