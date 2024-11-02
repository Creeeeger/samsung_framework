.class public final enum Lcom/android/systemui/screenshot/ScreenshotEvent;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenshot/ScreenshotEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const/16 v2, 0x12e

    .line 5
    .line 6
    const-string v3, "SCREENSHOT_REQUESTED_GLOBAL_ACTIONS"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 13
    .line 14
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    const/16 v3, 0x12f

    .line 18
    .line 19
    const-string v4, "SCREENSHOT_REQUESTED_KEY_CHORD"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 26
    .line 27
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 28
    .line 29
    move-object v2, v3

    .line 30
    const/16 v4, 0x180

    .line 31
    .line 32
    const-string v5, "SCREENSHOT_REQUESTED_KEY_OTHER"

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v3, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 39
    .line 40
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 41
    .line 42
    move-object v3, v4

    .line 43
    const/16 v5, 0x130

    .line 44
    .line 45
    const-string v6, "SCREENSHOT_REQUESTED_OVERVIEW"

    .line 46
    .line 47
    const/4 v7, 0x3

    .line 48
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 52
    .line 53
    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 54
    .line 55
    move-object v4, v5

    .line 56
    const/16 v6, 0x17e

    .line 57
    .line 58
    const-string v7, "SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS"

    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v5, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 65
    .line 66
    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 67
    .line 68
    move-object v5, v6

    .line 69
    const/16 v7, 0x27e

    .line 70
    .line 71
    const-string v8, "SCREENSHOT_REQUESTED_VENDOR_GESTURE"

    .line 72
    .line 73
    const/4 v9, 0x5

    .line 74
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v6, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 78
    .line 79
    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 80
    .line 81
    move-object v6, v7

    .line 82
    const/16 v8, 0x131

    .line 83
    .line 84
    const-string v9, "SCREENSHOT_REQUESTED_OTHER"

    .line 85
    .line 86
    const/4 v10, 0x6

    .line 87
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v7, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 91
    .line 92
    new-instance v8, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 93
    .line 94
    move-object v7, v8

    .line 95
    const/16 v9, 0x132

    .line 96
    .line 97
    const-string v10, "SCREENSHOT_SAVED"

    .line 98
    .line 99
    const/4 v11, 0x7

    .line 100
    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v8, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 104
    .line 105
    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 106
    .line 107
    move-object v8, v9

    .line 108
    const/16 v10, 0x150

    .line 109
    .line 110
    const-string v11, "SCREENSHOT_NOT_SAVED"

    .line 111
    .line 112
    const/16 v12, 0x8

    .line 113
    .line 114
    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v9, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 118
    .line 119
    new-instance v10, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 120
    .line 121
    move-object v9, v10

    .line 122
    const/16 v11, 0x501

    .line 123
    .line 124
    const-string v12, "SCREENSHOT_CAPTURE_FAILED"

    .line 125
    .line 126
    const/16 v13, 0x9

    .line 127
    .line 128
    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 132
    .line 133
    new-instance v11, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 134
    .line 135
    move-object v10, v11

    .line 136
    const/16 v12, 0x133

    .line 137
    .line 138
    const-string v13, "SCREENSHOT_PREVIEW_TAPPED"

    .line 139
    .line 140
    const/16 v14, 0xa

    .line 141
    .line 142
    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v11, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 146
    .line 147
    new-instance v12, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 148
    .line 149
    move-object v11, v12

    .line 150
    const/16 v13, 0x134

    .line 151
    .line 152
    const-string v14, "SCREENSHOT_EDIT_TAPPED"

    .line 153
    .line 154
    const/16 v15, 0xb

    .line 155
    .line 156
    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    sput-object v12, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 160
    .line 161
    new-instance v13, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 162
    .line 163
    move-object v12, v13

    .line 164
    const/16 v14, 0x135

    .line 165
    .line 166
    const-string v15, "SCREENSHOT_SHARE_TAPPED"

    .line 167
    .line 168
    move-object/from16 v33, v0

    .line 169
    .line 170
    const/16 v0, 0xc

    .line 171
    .line 172
    invoke-direct {v13, v15, v0, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 176
    .line 177
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 178
    .line 179
    move-object v13, v0

    .line 180
    const/16 v14, 0x176

    .line 181
    .line 182
    const-string v15, "SCREENSHOT_SMART_ACTION_TAPPED"

    .line 183
    .line 184
    move-object/from16 v34, v1

    .line 185
    .line 186
    const/16 v1, 0xd

    .line 187
    .line 188
    invoke-direct {v0, v15, v1, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 192
    .line 193
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 194
    .line 195
    move-object v14, v0

    .line 196
    const/16 v1, 0x175

    .line 197
    .line 198
    const-string v15, "SCREENSHOT_SCROLL_TAPPED"

    .line 199
    .line 200
    move-object/from16 v35, v2

    .line 201
    .line 202
    const/16 v2, 0xe

    .line 203
    .line 204
    invoke-direct {v0, v15, v2, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 208
    .line 209
    move-object v15, v0

    .line 210
    const/16 v1, 0x136

    .line 211
    .line 212
    const-string v2, "SCREENSHOT_INTERACTION_TIMEOUT"

    .line 213
    .line 214
    move-object/from16 v36, v3

    .line 215
    .line 216
    const/16 v3, 0xf

    .line 217
    .line 218
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 219
    .line 220
    .line 221
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 222
    .line 223
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 224
    .line 225
    move-object/from16 v16, v0

    .line 226
    .line 227
    const/16 v1, 0x137

    .line 228
    .line 229
    const-string v2, "SCREENSHOT_EXPLICIT_DISMISSAL"

    .line 230
    .line 231
    const/16 v3, 0x10

    .line 232
    .line 233
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 237
    .line 238
    move-object/from16 v17, v0

    .line 239
    .line 240
    const/16 v1, 0x290

    .line 241
    .line 242
    const-string v2, "SCREENSHOT_SWIPE_DISMISSED"

    .line 243
    .line 244
    const/16 v3, 0x11

    .line 245
    .line 246
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 247
    .line 248
    .line 249
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 250
    .line 251
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 252
    .line 253
    move-object/from16 v18, v0

    .line 254
    .line 255
    const/16 v1, 0x434

    .line 256
    .line 257
    const-string v2, "SCREENSHOT_DISMISSED_OTHER"

    .line 258
    .line 259
    const/16 v3, 0x12

    .line 260
    .line 261
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 265
    .line 266
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 267
    .line 268
    move-object/from16 v19, v0

    .line 269
    .line 270
    const/16 v1, 0x280

    .line 271
    .line 272
    const-string v2, "SCREENSHOT_REENTERED"

    .line 273
    .line 274
    const/16 v3, 0x13

    .line 275
    .line 276
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 277
    .line 278
    .line 279
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 280
    .line 281
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 282
    .line 283
    move-object/from16 v20, v0

    .line 284
    .line 285
    const/16 v1, 0x2af

    .line 286
    .line 287
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_IMPRESSION"

    .line 288
    .line 289
    const/16 v3, 0x14

    .line 290
    .line 291
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 295
    .line 296
    move-object/from16 v21, v0

    .line 297
    .line 298
    const/16 v1, 0x2b0

    .line 299
    .line 300
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_REQUESTED"

    .line 301
    .line 302
    const/16 v3, 0x15

    .line 303
    .line 304
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 308
    .line 309
    move-object/from16 v22, v0

    .line 310
    .line 311
    const/16 v1, 0x2b1

    .line 312
    .line 313
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_SHARE"

    .line 314
    .line 315
    const/16 v3, 0x16

    .line 316
    .line 317
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 318
    .line 319
    .line 320
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 321
    .line 322
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 323
    .line 324
    move-object/from16 v23, v0

    .line 325
    .line 326
    const/16 v1, 0x2b2

    .line 327
    .line 328
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_EDIT"

    .line 329
    .line 330
    const/16 v3, 0x17

    .line 331
    .line 332
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 333
    .line 334
    .line 335
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 336
    .line 337
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 338
    .line 339
    move-object/from16 v24, v0

    .line 340
    .line 341
    const/16 v1, 0x370

    .line 342
    .line 343
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_STARTED"

    .line 344
    .line 345
    const/16 v3, 0x18

    .line 346
    .line 347
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 351
    .line 352
    move-object/from16 v25, v0

    .line 353
    .line 354
    const/16 v1, 0x371

    .line 355
    .line 356
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_FAILURE"

    .line 357
    .line 358
    const/16 v3, 0x19

    .line 359
    .line 360
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 364
    .line 365
    move-object/from16 v26, v0

    .line 366
    .line 367
    const/16 v1, 0x372

    .line 368
    .line 369
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_COMPLETED"

    .line 370
    .line 371
    const/16 v3, 0x1a

    .line 372
    .line 373
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 377
    .line 378
    move-object/from16 v27, v0

    .line 379
    .line 380
    const/16 v1, 0x379

    .line 381
    .line 382
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED"

    .line 383
    .line 384
    const/16 v3, 0x1b

    .line 385
    .line 386
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 387
    .line 388
    .line 389
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 390
    .line 391
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 392
    .line 393
    move-object/from16 v28, v0

    .line 394
    .line 395
    const/16 v1, 0x37a

    .line 396
    .line 397
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED"

    .line 398
    .line 399
    const/16 v3, 0x1c

    .line 400
    .line 401
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 402
    .line 403
    .line 404
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 405
    .line 406
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 407
    .line 408
    move-object/from16 v29, v0

    .line 409
    .line 410
    const/16 v1, 0x37b

    .line 411
    .line 412
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED"

    .line 413
    .line 414
    const/16 v3, 0x1d

    .line 415
    .line 416
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 417
    .line 418
    .line 419
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 420
    .line 421
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 422
    .line 423
    move-object/from16 v30, v0

    .line 424
    .line 425
    const/16 v1, 0x38e

    .line 426
    .line 427
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_SAVED"

    .line 428
    .line 429
    const/16 v3, 0x1e

    .line 430
    .line 431
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 432
    .line 433
    .line 434
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 435
    .line 436
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 437
    .line 438
    move-object/from16 v31, v0

    .line 439
    .line 440
    const/16 v1, 0x38f

    .line 441
    .line 442
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_EXIT"

    .line 443
    .line 444
    const/16 v3, 0x1f

    .line 445
    .line 446
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 447
    .line 448
    .line 449
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 450
    .line 451
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 452
    .line 453
    move-object/from16 v32, v0

    .line 454
    .line 455
    const/16 v1, 0x4d8

    .line 456
    .line 457
    const-string v2, "SCREENSHOT_SAVED_TO_WORK_PROFILE"

    .line 458
    .line 459
    const/16 v3, 0x20

    .line 460
    .line 461
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 462
    .line 463
    .line 464
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 465
    .line 466
    move-object/from16 v0, v33

    .line 467
    .line 468
    move-object/from16 v1, v34

    .line 469
    .line 470
    move-object/from16 v2, v35

    .line 471
    .line 472
    move-object/from16 v3, v36

    .line 473
    .line 474
    filled-new-array/range {v0 .. v32}, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 479
    .line 480
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
    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    .line 5
    .line 6
    return-void
.end method

.method public static getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 37
    .line 38
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotEvent;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    .line 2
    .line 3
    return p0
.end method
