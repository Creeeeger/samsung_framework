.class public final Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const p0, 0x7f0a0983

    .line 6
    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 10
    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    const p0, 0x7f0a0984

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_STATE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 18
    .line 19
    if-ne p1, p0, :cond_2

    .line 20
    .line 21
    const p0, 0x7f0a098d

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :cond_2
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 26
    .line 27
    if-ne p1, p0, :cond_3

    .line 28
    .line 29
    const p0, 0x7f0a097d

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :cond_3
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 34
    .line 35
    if-ne p1, p0, :cond_4

    .line 36
    .line 37
    const p0, 0x7f0a097e

    .line 38
    .line 39
    .line 40
    return p0

    .line 41
    :cond_4
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 42
    .line 43
    if-ne p1, p0, :cond_5

    .line 44
    .line 45
    const p0, 0x7f0a0986

    .line 46
    .line 47
    .line 48
    return p0

    .line 49
    :cond_5
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 50
    .line 51
    if-ne p1, p0, :cond_6

    .line 52
    .line 53
    const p0, 0x7f0a0981

    .line 54
    .line 55
    .line 56
    return p0

    .line 57
    :cond_6
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 58
    .line 59
    if-ne p1, p0, :cond_7

    .line 60
    .line 61
    const p0, 0x7f0a0982

    .line 62
    .line 63
    .line 64
    return p0

    .line 65
    :cond_7
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_TOP_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 66
    .line 67
    if-ne p1, p0, :cond_8

    .line 68
    .line 69
    const p0, 0x7f0a098e

    .line 70
    .line 71
    .line 72
    return p0

    .line 73
    :cond_8
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 74
    .line 75
    if-ne p1, p0, :cond_9

    .line 76
    .line 77
    const p0, 0x7f0a0971

    .line 78
    .line 79
    .line 80
    return p0

    .line 81
    :cond_9
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_CONTAINER:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 82
    .line 83
    if-ne p1, p0, :cond_a

    .line 84
    .line 85
    const p0, 0x7f0a0972

    .line 86
    .line 87
    .line 88
    return p0

    .line 89
    :cond_a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FORCE_RESTART_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 90
    .line 91
    if-ne p1, p0, :cond_b

    .line 92
    .line 93
    const p0, 0x7f0a0973

    .line 94
    .line 95
    .line 96
    return p0

    .line 97
    :cond_b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_CONFIRMATION_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 98
    .line 99
    if-ne p1, p0, :cond_c

    .line 100
    .line 101
    const p0, 0x7f0a0976

    .line 102
    .line 103
    .line 104
    return p0

    .line 105
    :cond_c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 106
    .line 107
    if-ne p1, p0, :cond_d

    .line 108
    .line 109
    const p0, 0x7f0a0975

    .line 110
    .line 111
    .line 112
    return p0

    .line 113
    :cond_d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 114
    .line 115
    if-ne p1, p0, :cond_e

    .line 116
    .line 117
    const p0, 0x7f0a0a2f

    .line 118
    .line 119
    .line 120
    return p0

    .line 121
    :cond_e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 122
    .line 123
    if-ne p1, p0, :cond_f

    .line 124
    .line 125
    const p0, 0x7f0a0a31

    .line 126
    .line 127
    .line 128
    return p0

    .line 129
    :cond_f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 130
    .line 131
    if-ne p1, p0, :cond_10

    .line 132
    .line 133
    const p0, 0x7f0a0a30

    .line 134
    .line 135
    .line 136
    return p0

    .line 137
    :cond_10
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ITEM_WRAPPED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 138
    .line 139
    if-ne p1, p0, :cond_11

    .line 140
    .line 141
    const p0, 0x7f0a097a

    .line 142
    .line 143
    .line 144
    return p0

    .line 145
    :cond_11
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 146
    .line 147
    if-ne p1, p0, :cond_12

    .line 148
    .line 149
    const p0, 0x7f0a0978

    .line 150
    .line 151
    .line 152
    return p0

    .line 153
    :cond_12
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ANIM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 154
    .line 155
    if-ne p1, p0, :cond_13

    .line 156
    .line 157
    const p0, 0x7f0a0977

    .line 158
    .line 159
    .line 160
    return p0

    .line 161
    :cond_13
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 162
    .line 163
    if-ne p1, p0, :cond_14

    .line 164
    .line 165
    const p0, 0x7f0a097b

    .line 166
    .line 167
    .line 168
    return p0

    .line 169
    :cond_14
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 170
    .line 171
    if-ne p1, p0, :cond_15

    .line 172
    .line 173
    const p0, 0x7f0a097c

    .line 174
    .line 175
    .line 176
    return p0

    .line 177
    :cond_15
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 178
    .line 179
    if-ne p1, p0, :cond_16

    .line 180
    .line 181
    const p0, 0x7f0a0979

    .line 182
    .line 183
    .line 184
    return p0

    .line 185
    :cond_16
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDEKEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 186
    .line 187
    if-ne p1, p0, :cond_17

    .line 188
    .line 189
    const p0, 0x7f0a0985

    .line 190
    .line 191
    .line 192
    return p0

    .line 193
    :cond_17
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SCREEN_CAPTURE_POPUP:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 194
    .line 195
    if-ne p1, p0, :cond_18

    .line 196
    .line 197
    const p0, 0x7f0a098c

    .line 198
    .line 199
    .line 200
    return p0

    .line 201
    :cond_18
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 202
    .line 203
    if-ne p1, p0, :cond_19

    .line 204
    .line 205
    const p0, 0x7f0a0987

    .line 206
    .line 207
    .line 208
    return p0

    .line 209
    :cond_19
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 210
    .line 211
    if-ne p1, p0, :cond_1a

    .line 212
    .line 213
    const p0, 0x7f0a0989

    .line 214
    .line 215
    .line 216
    return p0

    .line 217
    :cond_1a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 218
    .line 219
    if-ne p1, p0, :cond_1b

    .line 220
    .line 221
    const p0, 0x7f0a098a

    .line 222
    .line 223
    .line 224
    return p0

    .line 225
    :cond_1b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 226
    .line 227
    if-ne p1, p0, :cond_1c

    .line 228
    .line 229
    const p0, 0x7f0a098b

    .line 230
    .line 231
    .line 232
    return p0

    .line 233
    :cond_1c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 234
    .line 235
    if-ne p1, p0, :cond_1d

    .line 236
    .line 237
    const p0, 0x7f0a0988

    .line 238
    .line 239
    .line 240
    return p0

    .line 241
    :cond_1d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 242
    .line 243
    if-ne p1, p0, :cond_1e

    .line 244
    .line 245
    const p0, 0x7f0a0980

    .line 246
    .line 247
    .line 248
    return p0

    .line 249
    :cond_1e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_COFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 250
    .line 251
    if-ne p1, p0, :cond_1f

    .line 252
    .line 253
    const p0, 0x7f0a097f

    .line 254
    .line 255
    .line 256
    return p0

    .line 257
    :cond_1f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ROOT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 258
    .line 259
    if-ne p1, p0, :cond_20

    .line 260
    .line 261
    const p0, 0x7f0d0358

    .line 262
    .line 263
    .line 264
    return p0

    .line 265
    :cond_20
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_TOP_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 266
    .line 267
    if-ne p1, p0, :cond_21

    .line 268
    .line 269
    const p0, 0x7f0d0357

    .line 270
    .line 271
    .line 272
    return p0

    .line 273
    :cond_21
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BOTTOM_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 274
    .line 275
    if-ne p1, p0, :cond_22

    .line 276
    .line 277
    const p0, 0x7f0d0347

    .line 278
    .line 279
    .line 280
    return p0

    .line 281
    :cond_22
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 282
    .line 283
    if-ne p1, p0, :cond_23

    .line 284
    .line 285
    const p0, 0x7f0d0348

    .line 286
    .line 287
    .line 288
    return p0

    .line 289
    :cond_23
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 290
    .line 291
    if-ne p1, p0, :cond_24

    .line 292
    .line 293
    const p0, 0x7f0d034c

    .line 294
    .line 295
    .line 296
    return p0

    .line 297
    :cond_24
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_ROOT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 298
    .line 299
    if-ne p1, p0, :cond_25

    .line 300
    .line 301
    const p0, 0x7f0d0356

    .line 302
    .line 303
    .line 304
    return p0

    .line 305
    :cond_25
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 306
    .line 307
    if-ne p1, p0, :cond_26

    .line 308
    .line 309
    const p0, 0x7f0d0354

    .line 310
    .line 311
    .line 312
    return p0

    .line 313
    :cond_26
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 314
    .line 315
    if-ne p1, p0, :cond_27

    .line 316
    .line 317
    const p0, 0x7f0d0355

    .line 318
    .line 319
    .line 320
    return p0

    .line 321
    :cond_27
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDEKEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 322
    .line 323
    if-ne p1, p0, :cond_28

    .line 324
    .line 325
    const p0, 0x7f0d034d

    .line 326
    .line 327
    .line 328
    return p0

    .line 329
    :cond_28
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FORCE_RESTART_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 330
    .line 331
    if-ne p1, p0, :cond_29

    .line 332
    .line 333
    const p0, 0x7f0d0346

    .line 334
    .line 335
    .line 336
    return p0

    .line 337
    :cond_29
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SCREEN_CAPTURE_POPUP:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 338
    .line 339
    if-ne p1, p0, :cond_2a

    .line 340
    .line 341
    const p0, 0x7f0d0353

    .line 342
    .line 343
    .line 344
    return p0

    .line 345
    :cond_2a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_MINI_SVIEW_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 346
    .line 347
    if-ne p1, p0, :cond_2b

    .line 348
    .line 349
    const p0, 0x7f0d0350

    .line 350
    .line 351
    .line 352
    return p0

    .line 353
    :cond_2b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_MINI_SVIEW_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 354
    .line 355
    if-ne p1, p0, :cond_2c

    .line 356
    .line 357
    const p0, 0x7f0d0351

    .line 358
    .line 359
    .line 360
    return p0

    .line 361
    :cond_2c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_MINI_SVIEW_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 362
    .line 363
    if-ne p1, p0, :cond_2d

    .line 364
    .line 365
    const p0, 0x7f0d0352

    .line 366
    .line 367
    .line 368
    return p0

    .line 369
    :cond_2d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 370
    .line 371
    if-ne p1, p0, :cond_2e

    .line 372
    .line 373
    const p0, 0x7f0d0349

    .line 374
    .line 375
    .line 376
    return p0

    .line 377
    :cond_2e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 378
    .line 379
    if-ne p1, p0, :cond_2f

    .line 380
    .line 381
    const p0, 0x7f0d034a

    .line 382
    .line 383
    .line 384
    return p0

    .line 385
    :cond_2f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_LARGE_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 386
    .line 387
    if-ne p1, p0, :cond_30

    .line 388
    .line 389
    const p0, 0x7f0d034e

    .line 390
    .line 391
    .line 392
    return p0

    .line 393
    :cond_30
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_LARGE_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 394
    .line 395
    if-ne p1, p0, :cond_31

    .line 396
    .line 397
    const p0, 0x7f0d034f

    .line 398
    .line 399
    .line 400
    return p0

    .line 401
    :cond_31
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 402
    .line 403
    if-ne p1, p0, :cond_32

    .line 404
    .line 405
    const p0, 0x7f0d034b

    .line 406
    .line 407
    .line 408
    return p0

    .line 409
    :cond_32
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BLUR_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 410
    .line 411
    if-ne p1, p0, :cond_33

    .line 412
    .line 413
    const p0, 0x7f0d0345

    .line 414
    .line 415
    .line 416
    return p0

    .line 417
    :cond_33
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_POWEROFF:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 418
    .line 419
    if-ne p1, p0, :cond_34

    .line 420
    .line 421
    const p0, 0x7f0812fd

    .line 422
    .line 423
    .line 424
    return p0

    .line 425
    :cond_34
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_POWER_OFF_BG:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 426
    .line 427
    if-ne p1, p0, :cond_35

    .line 428
    .line 429
    const p0, 0x7f08069c

    .line 430
    .line 431
    .line 432
    return p0

    .line 433
    :cond_35
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_POWER_OFF_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 434
    .line 435
    if-ne p1, p0, :cond_36

    .line 436
    .line 437
    const p0, 0x7f0808e4

    .line 438
    .line 439
    .line 440
    return p0

    .line 441
    :cond_36
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_RESTART:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 442
    .line 443
    if-ne p1, p0, :cond_37

    .line 444
    .line 445
    const p0, 0x7f0812ff

    .line 446
    .line 447
    .line 448
    return p0

    .line 449
    :cond_37
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_RESTART_BG:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 450
    .line 451
    if-ne p1, p0, :cond_38

    .line 452
    .line 453
    const p0, 0x7f08069d

    .line 454
    .line 455
    .line 456
    return p0

    .line 457
    :cond_38
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_RESTART_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 458
    .line 459
    if-ne p1, p0, :cond_39

    .line 460
    .line 461
    const p0, 0x7f0808e5

    .line 462
    .line 463
    .line 464
    return p0

    .line 465
    :cond_39
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SAFEMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 466
    .line 467
    if-ne p1, p0, :cond_3a

    .line 468
    .line 469
    const p0, 0x7f081301

    .line 470
    .line 471
    .line 472
    return p0

    .line 473
    :cond_3a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 474
    .line 475
    if-ne p1, p0, :cond_3b

    .line 476
    .line 477
    const p0, 0x7f0812f6

    .line 478
    .line 479
    .line 480
    return p0

    .line 481
    :cond_3b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY_CALL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 482
    .line 483
    if-ne p1, p0, :cond_3c

    .line 484
    .line 485
    const p0, 0x7f0812f7

    .line 486
    .line 487
    .line 488
    return p0

    .line 489
    :cond_3c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_MEDICAL_INFO:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 490
    .line 491
    if-ne p1, p0, :cond_3d

    .line 492
    .line 493
    const p0, 0x7f0812fb

    .line 494
    .line 495
    .line 496
    return p0

    .line 497
    :cond_3d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_LOCKDOWN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 498
    .line 499
    if-ne p1, p0, :cond_3e

    .line 500
    .line 501
    const p0, 0x7f0812fa

    .line 502
    .line 503
    .line 504
    return p0

    .line 505
    :cond_3e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_PROKIOSK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 506
    .line 507
    if-ne p1, p0, :cond_3f

    .line 508
    .line 509
    const p0, 0x7f0812fe

    .line 510
    .line 511
    .line 512
    return p0

    .line 513
    :cond_3f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_DATAMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 514
    .line 515
    if-ne p1, p0, :cond_40

    .line 516
    .line 517
    const p0, 0x7f0812fc

    .line 518
    .line 519
    .line 520
    return p0

    .line 521
    :cond_40
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ENDSESSION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 522
    .line 523
    if-ne p1, p0, :cond_41

    .line 524
    .line 525
    const p0, 0x7f0812f8

    .line 526
    .line 527
    .line 528
    return p0

    .line 529
    :cond_41
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_BG_FOCUSED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 530
    .line 531
    if-ne p1, p0, :cond_42

    .line 532
    .line 533
    const p0, 0x7f080f28

    .line 534
    .line 535
    .line 536
    return p0

    .line 537
    :cond_42
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_RIPPLE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 538
    .line 539
    if-ne p1, p0, :cond_43

    .line 540
    .line 541
    const p0, 0x7f080f29

    .line 542
    .line 543
    .line 544
    return p0

    .line 545
    :cond_43
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 546
    .line 547
    if-ne p1, p0, :cond_44

    .line 548
    .line 549
    const p0, 0x7f08069e

    .line 550
    .line 551
    .line 552
    return p0

    .line 553
    :cond_44
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 554
    .line 555
    if-ne p1, p0, :cond_45

    .line 556
    .line 557
    const p0, 0x7f08069f

    .line 558
    .line 559
    .line 560
    return p0

    .line 561
    :cond_45
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 562
    .line 563
    if-ne p1, p0, :cond_46

    .line 564
    .line 565
    const p0, 0x7f080f2a

    .line 566
    .line 567
    .line 568
    return p0

    .line 569
    :cond_46
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 570
    .line 571
    if-ne p1, p0, :cond_47

    .line 572
    .line 573
    const p0, 0x7f080f2b

    .line 574
    .line 575
    .line 576
    return p0

    .line 577
    :cond_47
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->INTEGER_FORCE_RESTART_TIME:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 578
    .line 579
    if-ne p1, p0, :cond_48

    .line 580
    .line 581
    const p0, 0x7f0b00e2

    .line 582
    .line 583
    .line 584
    return p0

    .line 585
    :cond_48
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_TOP_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 586
    .line 587
    if-ne p1, p0, :cond_49

    .line 588
    .line 589
    const p0, 0x7f070e19

    .line 590
    .line 591
    .line 592
    return p0

    .line 593
    :cond_49
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_TOP_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 594
    .line 595
    if-ne p1, p0, :cond_4a

    .line 596
    .line 597
    const p0, 0x7f070e1a

    .line 598
    .line 599
    .line 600
    return p0

    .line 601
    :cond_4a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_RIGHT_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 602
    .line 603
    if-ne p1, p0, :cond_4b

    .line 604
    .line 605
    const p0, 0x7f070e17

    .line 606
    .line 607
    .line 608
    return p0

    .line 609
    :cond_4b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_RIGHT_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 610
    .line 611
    if-ne p1, p0, :cond_4c

    .line 612
    .line 613
    const p0, 0x7f070e18

    .line 614
    .line 615
    .line 616
    return p0

    .line 617
    :cond_4c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BOTTOMBUTTONVIEW_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 618
    .line 619
    if-ne p1, p0, :cond_4d

    .line 620
    .line 621
    const p0, 0x7f070df5

    .line 622
    .line 623
    .line 624
    return p0

    .line 625
    :cond_4d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 626
    .line 627
    if-ne p1, p0, :cond_4e

    .line 628
    .line 629
    const p0, 0x7f070df7

    .line 630
    .line 631
    .line 632
    return p0

    .line 633
    :cond_4e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN_TASK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 634
    .line 635
    if-ne p1, p0, :cond_4f

    .line 636
    .line 637
    const p0, 0x7f070df8

    .line 638
    .line 639
    .line 640
    return p0

    .line 641
    :cond_4f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 642
    .line 643
    if-ne p1, p0, :cond_50

    .line 644
    .line 645
    const p0, 0x7f070df6

    .line 646
    .line 647
    .line 648
    return p0

    .line 649
    :cond_50
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDE_COVER_WIDTH:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 650
    .line 651
    if-ne p1, p0, :cond_51

    .line 652
    .line 653
    const p0, 0x7f070e16

    .line 654
    .line 655
    .line 656
    return p0

    .line 657
    :cond_51
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_BOTTOM_MARGIN_2BTNS:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 658
    .line 659
    if-ne p1, p0, :cond_52

    .line 660
    .line 661
    const p0, 0x7f070e0e

    .line 662
    .line 663
    .line 664
    return p0

    .line 665
    :cond_52
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_BOTTOM_MARGIN_1BTN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 666
    .line 667
    if-ne p1, p0, :cond_53

    .line 668
    .line 669
    const p0, 0x7f070e0d

    .line 670
    .line 671
    .line 672
    return p0

    .line 673
    :cond_53
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 674
    .line 675
    if-ne p1, p0, :cond_54

    .line 676
    .line 677
    const p0, 0x7f070e0c

    .line 678
    .line 679
    .line 680
    return p0

    .line 681
    :cond_54
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_RIGHT_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 682
    .line 683
    if-ne p1, p0, :cond_55

    .line 684
    .line 685
    const p0, 0x7f070e0f

    .line 686
    .line 687
    .line 688
    return p0

    .line 689
    :cond_55
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_HEIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 690
    .line 691
    if-ne p1, p0, :cond_56

    .line 692
    .line 693
    const p0, 0x7f070e13

    .line 694
    .line 695
    .line 696
    return p0

    .line 697
    :cond_56
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_TOP_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 698
    .line 699
    if-ne p1, p0, :cond_57

    .line 700
    .line 701
    const p0, 0x7f070e15

    .line 702
    .line 703
    .line 704
    return p0

    .line 705
    :cond_57
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_SIDE_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 706
    .line 707
    if-ne p1, p0, :cond_58

    .line 708
    .line 709
    const p0, 0x7f070e14

    .line 710
    .line 711
    .line 712
    return p0

    .line 713
    :cond_58
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_OPEN_COVER_TOP_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 714
    .line 715
    if-ne p1, p0, :cond_59

    .line 716
    .line 717
    const p0, 0x7f070e12

    .line 718
    .line 719
    .line 720
    return p0

    .line 721
    :cond_59
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_VERTICAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 722
    .line 723
    if-ne p1, p0, :cond_5a

    .line 724
    .line 725
    const p0, 0x7f070e03

    .line 726
    .line 727
    .line 728
    return p0

    .line 729
    :cond_5a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_HORIZONTAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 730
    .line 731
    if-ne p1, p0, :cond_5b

    .line 732
    .line 733
    const p0, 0x7f070dfb

    .line 734
    .line 735
    .line 736
    return p0

    .line 737
    :cond_5b
    const/4 p0, 0x0

    .line 738
    return p0
.end method
