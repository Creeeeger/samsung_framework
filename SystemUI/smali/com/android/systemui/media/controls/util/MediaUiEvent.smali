.class public final enum Lcom/android/systemui/media/controls/util/MediaUiEvent;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/controls/util/MediaUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum ACTIVE_TO_RESUME:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum CAST_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum MEDIA_TIMEOUT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TRANSFER_TO_CAST:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TRANSFER_TO_LOCAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

.field public static final enum TRANSFER_TO_REMOTE:Lcom/android/systemui/media/controls/util/MediaUiEvent;


# instance fields
.field private final metricId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/16 v2, 0x405

    .line 5
    .line 6
    const-string v3, "LOCAL_MEDIA_ADDED"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 13
    .line 14
    new-instance v2, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    const/16 v3, 0x406

    .line 18
    .line 19
    const-string v4, "CAST_MEDIA_ADDED"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAST_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 26
    .line 27
    new-instance v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 28
    .line 29
    move-object v2, v3

    .line 30
    const/16 v4, 0x407

    .line 31
    .line 32
    const-string v5, "REMOTE_MEDIA_ADDED"

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 39
    .line 40
    new-instance v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 41
    .line 42
    move-object v3, v4

    .line 43
    const/16 v5, 0x408

    .line 44
    .line 45
    const-string v6, "TRANSFER_TO_LOCAL"

    .line 46
    .line 47
    const/4 v7, 0x3

    .line 48
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_LOCAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 52
    .line 53
    new-instance v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 54
    .line 55
    move-object v4, v5

    .line 56
    const/16 v6, 0x409

    .line 57
    .line 58
    const-string v7, "TRANSFER_TO_CAST"

    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_CAST:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 65
    .line 66
    new-instance v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 67
    .line 68
    move-object v5, v6

    .line 69
    const/16 v7, 0x40a

    .line 70
    .line 71
    const-string v8, "TRANSFER_TO_REMOTE"

    .line 72
    .line 73
    const/4 v9, 0x5

    .line 74
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_REMOTE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 78
    .line 79
    new-instance v7, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 80
    .line 81
    move-object v6, v7

    .line 82
    const/16 v8, 0x3f5

    .line 83
    .line 84
    const-string v9, "RESUME_MEDIA_ADDED"

    .line 85
    .line 86
    const/4 v10, 0x6

    .line 87
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v7, Lcom/android/systemui/media/controls/util/MediaUiEvent;->RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 91
    .line 92
    new-instance v8, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 93
    .line 94
    move-object v7, v8

    .line 95
    const/16 v9, 0x3f6

    .line 96
    .line 97
    const-string v10, "ACTIVE_TO_RESUME"

    .line 98
    .line 99
    const/4 v11, 0x7

    .line 100
    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v8, Lcom/android/systemui/media/controls/util/MediaUiEvent;->ACTIVE_TO_RESUME:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 104
    .line 105
    new-instance v9, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 106
    .line 107
    move-object v8, v9

    .line 108
    const/16 v10, 0x3f7

    .line 109
    .line 110
    const-string v11, "MEDIA_TIMEOUT"

    .line 111
    .line 112
    const/16 v12, 0x8

    .line 113
    .line 114
    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_TIMEOUT:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 118
    .line 119
    new-instance v10, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 120
    .line 121
    move-object v9, v10

    .line 122
    const/16 v11, 0x3f8

    .line 123
    .line 124
    const-string v12, "MEDIA_REMOVED"

    .line 125
    .line 126
    const/16 v13, 0x9

    .line 127
    .line 128
    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 132
    .line 133
    new-instance v11, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 134
    .line 135
    move-object v10, v11

    .line 136
    const/16 v12, 0x3f9

    .line 137
    .line 138
    const-string v13, "CAROUSEL_PAGE"

    .line 139
    .line 140
    const/16 v14, 0xa

    .line 141
    .line 142
    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    new-instance v12, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 146
    .line 147
    move-object v11, v12

    .line 148
    const/16 v13, 0x3fa

    .line 149
    .line 150
    const-string v14, "DISMISS_SWIPE"

    .line 151
    .line 152
    const/16 v15, 0xb

    .line 153
    .line 154
    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    new-instance v13, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 158
    .line 159
    move-object v12, v13

    .line 160
    const/16 v14, 0x3fb

    .line 161
    .line 162
    const-string v15, "OPEN_LONG_PRESS"

    .line 163
    .line 164
    move-object/from16 v35, v0

    .line 165
    .line 166
    const/16 v0, 0xc

    .line 167
    .line 168
    invoke-direct {v13, v15, v0, v14}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 172
    .line 173
    move-object v13, v0

    .line 174
    const/16 v14, 0x3fc

    .line 175
    .line 176
    const-string v15, "DISMISS_LONG_PRESS"

    .line 177
    .line 178
    move-object/from16 v36, v1

    .line 179
    .line 180
    const/16 v1, 0xd

    .line 181
    .line 182
    invoke-direct {v0, v15, v1, v14}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 186
    .line 187
    move-object v14, v0

    .line 188
    const/16 v1, 0x3fd

    .line 189
    .line 190
    const-string v15, "OPEN_SETTINGS_LONG_PRESS"

    .line 191
    .line 192
    move-object/from16 v37, v2

    .line 193
    .line 194
    const/16 v2, 0xe

    .line 195
    .line 196
    invoke-direct {v0, v15, v2, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 200
    .line 201
    move-object v15, v0

    .line 202
    const/16 v1, 0x3fe

    .line 203
    .line 204
    const-string v2, "OPEN_SETTINGS_CAROUSEL"

    .line 205
    .line 206
    move-object/from16 v38, v3

    .line 207
    .line 208
    const/16 v3, 0xf

    .line 209
    .line 210
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 214
    .line 215
    move-object/from16 v16, v0

    .line 216
    .line 217
    const/16 v1, 0x3ff

    .line 218
    .line 219
    const-string v2, "TAP_ACTION_PLAY_PAUSE"

    .line 220
    .line 221
    const/16 v3, 0x10

    .line 222
    .line 223
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 227
    .line 228
    move-object/from16 v17, v0

    .line 229
    .line 230
    const/16 v1, 0x400

    .line 231
    .line 232
    const-string v2, "TAP_ACTION_PREV"

    .line 233
    .line 234
    const/16 v3, 0x11

    .line 235
    .line 236
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 240
    .line 241
    move-object/from16 v18, v0

    .line 242
    .line 243
    const/16 v1, 0x401

    .line 244
    .line 245
    const-string v2, "TAP_ACTION_NEXT"

    .line 246
    .line 247
    const/16 v3, 0x12

    .line 248
    .line 249
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 253
    .line 254
    move-object/from16 v19, v0

    .line 255
    .line 256
    const/16 v1, 0x402

    .line 257
    .line 258
    const-string v2, "TAP_ACTION_OTHER"

    .line 259
    .line 260
    const/16 v3, 0x13

    .line 261
    .line 262
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 266
    .line 267
    move-object/from16 v20, v0

    .line 268
    .line 269
    const/16 v1, 0x403

    .line 270
    .line 271
    const-string v2, "ACTION_SEEK"

    .line 272
    .line 273
    const/16 v3, 0x14

    .line 274
    .line 275
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 279
    .line 280
    move-object/from16 v21, v0

    .line 281
    .line 282
    const/16 v1, 0x404

    .line 283
    .line 284
    const-string v2, "OPEN_OUTPUT_SWITCHER"

    .line 285
    .line 286
    const/16 v3, 0x15

    .line 287
    .line 288
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 292
    .line 293
    move-object/from16 v22, v0

    .line 294
    .line 295
    const/16 v1, 0x40c

    .line 296
    .line 297
    const-string v2, "MEDIA_TAP_CONTENT_VIEW"

    .line 298
    .line 299
    const/16 v3, 0x16

    .line 300
    .line 301
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 302
    .line 303
    .line 304
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 305
    .line 306
    move-object/from16 v23, v0

    .line 307
    .line 308
    const/16 v1, 0x40d

    .line 309
    .line 310
    const-string v2, "MEDIA_CAROUSEL_LOCATION_QQS"

    .line 311
    .line 312
    const/16 v3, 0x17

    .line 313
    .line 314
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 315
    .line 316
    .line 317
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 318
    .line 319
    move-object/from16 v24, v0

    .line 320
    .line 321
    const/16 v1, 0x40e

    .line 322
    .line 323
    const-string v2, "MEDIA_CAROUSEL_LOCATION_QS"

    .line 324
    .line 325
    const/16 v3, 0x18

    .line 326
    .line 327
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 328
    .line 329
    .line 330
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 331
    .line 332
    move-object/from16 v25, v0

    .line 333
    .line 334
    const/16 v1, 0x40f

    .line 335
    .line 336
    const-string v2, "MEDIA_CAROUSEL_LOCATION_LOCKSCREEN"

    .line 337
    .line 338
    const/16 v3, 0x19

    .line 339
    .line 340
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 344
    .line 345
    move-object/from16 v26, v0

    .line 346
    .line 347
    const/16 v1, 0x410

    .line 348
    .line 349
    const-string v2, "MEDIA_CAROUSEL_LOCATION_DREAM"

    .line 350
    .line 351
    const/16 v3, 0x1a

    .line 352
    .line 353
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 357
    .line 358
    move-object/from16 v27, v0

    .line 359
    .line 360
    const/16 v1, 0x411

    .line 361
    .line 362
    const-string v2, "MEDIA_RECOMMENDATION_ADDED"

    .line 363
    .line 364
    const/16 v3, 0x1b

    .line 365
    .line 366
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 367
    .line 368
    .line 369
    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 370
    .line 371
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 372
    .line 373
    move-object/from16 v28, v0

    .line 374
    .line 375
    const/16 v1, 0x412

    .line 376
    .line 377
    const-string v2, "MEDIA_RECOMMENDATION_REMOVED"

    .line 378
    .line 379
    const/16 v3, 0x1c

    .line 380
    .line 381
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 382
    .line 383
    .line 384
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 385
    .line 386
    move-object/from16 v29, v0

    .line 387
    .line 388
    const/16 v1, 0x413

    .line 389
    .line 390
    const-string v2, "MEDIA_RECOMMENDATION_ACTIVATED"

    .line 391
    .line 392
    const/16 v3, 0x1d

    .line 393
    .line 394
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 395
    .line 396
    .line 397
    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 398
    .line 399
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 400
    .line 401
    move-object/from16 v30, v0

    .line 402
    .line 403
    const/16 v1, 0x414

    .line 404
    .line 405
    const-string v2, "MEDIA_RECOMMENDATION_ITEM_TAP"

    .line 406
    .line 407
    const/16 v3, 0x1e

    .line 408
    .line 409
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 410
    .line 411
    .line 412
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 413
    .line 414
    move-object/from16 v31, v0

    .line 415
    .line 416
    const/16 v1, 0x415

    .line 417
    .line 418
    const-string v2, "MEDIA_RECOMMENDATION_CARD_TAP"

    .line 419
    .line 420
    const/16 v3, 0x1f

    .line 421
    .line 422
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 426
    .line 427
    move-object/from16 v32, v0

    .line 428
    .line 429
    const/16 v1, 0x437

    .line 430
    .line 431
    const-string v2, "MEDIA_OPEN_BROADCAST_DIALOG"

    .line 432
    .line 433
    const/16 v3, 0x20

    .line 434
    .line 435
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 436
    .line 437
    .line 438
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 439
    .line 440
    move-object/from16 v33, v0

    .line 441
    .line 442
    const/16 v1, 0x4dc

    .line 443
    .line 444
    const-string v2, "MEDIA_CAROUSEL_SINGLE_PLAYER"

    .line 445
    .line 446
    const/16 v3, 0x21

    .line 447
    .line 448
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 449
    .line 450
    .line 451
    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 452
    .line 453
    new-instance v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 454
    .line 455
    move-object/from16 v34, v0

    .line 456
    .line 457
    const/16 v1, 0x4dd

    .line 458
    .line 459
    const-string v2, "MEDIA_CAROUSEL_MULTIPLE_PLAYERS"

    .line 460
    .line 461
    const/16 v3, 0x22

    .line 462
    .line 463
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    .line 464
    .line 465
    .line 466
    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 467
    .line 468
    move-object/from16 v0, v35

    .line 469
    .line 470
    move-object/from16 v1, v36

    .line 471
    .line 472
    move-object/from16 v2, v37

    .line 473
    .line 474
    move-object/from16 v3, v38

    .line 475
    .line 476
    filled-new-array/range {v0 .. v34}, [Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    sput-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->$VALUES:[Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 481
    .line 482
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->metricId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/controls/util/MediaUiEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/controls/util/MediaUiEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->$VALUES:[Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->metricId:I

    .line 2
    .line 3
    return p0
.end method
