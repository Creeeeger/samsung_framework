.class public final enum Lcom/android/systemui/monet/Style;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/monet/Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/monet/Style;

.field public static final enum CONTENT:Lcom/android/systemui/monet/Style;

.field public static final enum EXPRESSIVE:Lcom/android/systemui/monet/Style;

.field public static final enum FRUIT_SALAD:Lcom/android/systemui/monet/Style;

.field public static final enum MONOCHROMATIC:Lcom/android/systemui/monet/Style;

.field public static final enum RAINBOW:Lcom/android/systemui/monet/Style;

.field public static final enum SPRITZ:Lcom/android/systemui/monet/Style;

.field public static final enum TONAL_SPOT:Lcom/android/systemui/monet/Style;

.field public static final enum VIBRANT:Lcom/android/systemui/monet/Style;


# instance fields
.field private final coreSpec:Lcom/android/systemui/monet/CoreSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/android/systemui/monet/Style;

    .line 2
    .line 3
    new-instance v7, Lcom/android/systemui/monet/CoreSpec;

    .line 4
    .line 5
    new-instance v2, Lcom/android/systemui/monet/TonalSpec;

    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/monet/HueSource;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/android/systemui/monet/ChromaConstant;

    .line 13
    .line 14
    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    .line 15
    .line 16
    invoke-direct {v3, v8, v9}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/android/systemui/monet/TonalSpec;

    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/monet/HueSource;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcom/android/systemui/monet/ChromaConstant;

    .line 30
    .line 31
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    .line 32
    .line 33
    invoke-direct {v4, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v1, v4}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/android/systemui/monet/TonalSpec;

    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/monet/HueSource;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lcom/android/systemui/monet/ChromaConstant;

    .line 47
    .line 48
    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    .line 49
    .line 50
    invoke-direct {v5, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v1, v5}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 57
    .line 58
    new-instance v1, Lcom/android/systemui/monet/HueSource;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    .line 64
    .line 65
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 66
    .line 67
    invoke-direct {v6, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v5, v1, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    .line 74
    .line 75
    new-instance v1, Lcom/android/systemui/monet/HueSource;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 81
    .line 82
    invoke-direct {v8, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v6, v1, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 86
    .line 87
    .line 88
    move-object v1, v7

    .line 89
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "SPRITZ"

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/android/systemui/monet/Style;->SPRITZ:Lcom/android/systemui/monet/Style;

    .line 99
    .line 100
    new-instance v1, Lcom/android/systemui/monet/Style;

    .line 101
    .line 102
    new-instance v8, Lcom/android/systemui/monet/CoreSpec;

    .line 103
    .line 104
    new-instance v3, Lcom/android/systemui/monet/TonalSpec;

    .line 105
    .line 106
    new-instance v2, Lcom/android/systemui/monet/HueSource;

    .line 107
    .line 108
    invoke-direct {v2}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v4, Lcom/android/systemui/monet/ChromaConstant;

    .line 112
    .line 113
    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    .line 114
    .line 115
    invoke-direct {v4, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lcom/android/systemui/monet/TonalSpec;

    .line 122
    .line 123
    new-instance v2, Lcom/android/systemui/monet/HueSource;

    .line 124
    .line 125
    invoke-direct {v2}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v5, Lcom/android/systemui/monet/ChromaConstant;

    .line 129
    .line 130
    invoke-direct {v5, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 134
    .line 135
    .line 136
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 137
    .line 138
    new-instance v2, Lcom/android/systemui/monet/HueAdd;

    .line 139
    .line 140
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    .line 141
    .line 142
    invoke-direct {v2, v6, v7}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 143
    .line 144
    .line 145
    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    .line 146
    .line 147
    const-wide/high16 v14, 0x4038000000000000L    # 24.0

    .line 148
    .line 149
    invoke-direct {v9, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 150
    .line 151
    .line 152
    invoke-direct {v5, v2, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 153
    .line 154
    .line 155
    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    .line 156
    .line 157
    new-instance v2, Lcom/android/systemui/monet/HueSource;

    .line 158
    .line 159
    invoke-direct {v2}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 160
    .line 161
    .line 162
    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    .line 163
    .line 164
    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    .line 165
    .line 166
    invoke-direct {v6, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 167
    .line 168
    .line 169
    invoke-direct {v9, v2, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 170
    .line 171
    .line 172
    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    .line 173
    .line 174
    new-instance v2, Lcom/android/systemui/monet/HueSource;

    .line 175
    .line 176
    invoke-direct {v2}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    .line 180
    .line 181
    invoke-direct {v6, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v7, v2, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 185
    .line 186
    .line 187
    move-object v2, v8

    .line 188
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 189
    .line 190
    move-object v6, v9

    .line 191
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 192
    .line 193
    .line 194
    const-string v2, "TONAL_SPOT"

    .line 195
    .line 196
    const/4 v3, 0x1

    .line 197
    invoke-direct {v1, v2, v3, v8}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 198
    .line 199
    .line 200
    sput-object v1, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    .line 201
    .line 202
    new-instance v2, Lcom/android/systemui/monet/Style;

    .line 203
    .line 204
    new-instance v9, Lcom/android/systemui/monet/CoreSpec;

    .line 205
    .line 206
    new-instance v4, Lcom/android/systemui/monet/TonalSpec;

    .line 207
    .line 208
    new-instance v3, Lcom/android/systemui/monet/HueSource;

    .line 209
    .line 210
    invoke-direct {v3}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 211
    .line 212
    .line 213
    new-instance v5, Lcom/android/systemui/monet/ChromaMaxOut;

    .line 214
    .line 215
    invoke-direct {v5}, Lcom/android/systemui/monet/ChromaMaxOut;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-direct {v4, v3, v5}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 219
    .line 220
    .line 221
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 222
    .line 223
    new-instance v3, Lcom/android/systemui/monet/HueVibrantSecondary;

    .line 224
    .line 225
    invoke-direct {v3}, Lcom/android/systemui/monet/HueVibrantSecondary;-><init>()V

    .line 226
    .line 227
    .line 228
    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    .line 229
    .line 230
    invoke-direct {v6, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 231
    .line 232
    .line 233
    invoke-direct {v5, v3, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 234
    .line 235
    .line 236
    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    .line 237
    .line 238
    new-instance v3, Lcom/android/systemui/monet/HueVibrantTertiary;

    .line 239
    .line 240
    invoke-direct {v3}, Lcom/android/systemui/monet/HueVibrantTertiary;-><init>()V

    .line 241
    .line 242
    .line 243
    new-instance v7, Lcom/android/systemui/monet/ChromaConstant;

    .line 244
    .line 245
    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    .line 246
    .line 247
    invoke-direct {v7, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 248
    .line 249
    .line 250
    invoke-direct {v6, v3, v7}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 251
    .line 252
    .line 253
    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    .line 254
    .line 255
    new-instance v3, Lcom/android/systemui/monet/HueSource;

    .line 256
    .line 257
    invoke-direct {v3}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 261
    .line 262
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    .line 263
    .line 264
    invoke-direct {v8, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v7, v3, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 268
    .line 269
    .line 270
    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    .line 271
    .line 272
    new-instance v3, Lcom/android/systemui/monet/HueSource;

    .line 273
    .line 274
    invoke-direct {v3}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 275
    .line 276
    .line 277
    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    .line 278
    .line 279
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    .line 280
    .line 281
    invoke-direct {v10, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 282
    .line 283
    .line 284
    invoke-direct {v8, v3, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 285
    .line 286
    .line 287
    move-object v3, v9

    .line 288
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 289
    .line 290
    .line 291
    const-string v3, "VIBRANT"

    .line 292
    .line 293
    const/4 v4, 0x2

    .line 294
    invoke-direct {v2, v3, v4, v9}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 295
    .line 296
    .line 297
    sput-object v2, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    .line 298
    .line 299
    new-instance v3, Lcom/android/systemui/monet/Style;

    .line 300
    .line 301
    new-instance v10, Lcom/android/systemui/monet/CoreSpec;

    .line 302
    .line 303
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 304
    .line 305
    new-instance v4, Lcom/android/systemui/monet/HueAdd;

    .line 306
    .line 307
    const-wide/high16 v6, 0x406e000000000000L    # 240.0

    .line 308
    .line 309
    invoke-direct {v4, v6, v7}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 310
    .line 311
    .line 312
    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    .line 313
    .line 314
    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    .line 315
    .line 316
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 317
    .line 318
    .line 319
    invoke-direct {v5, v4, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 320
    .line 321
    .line 322
    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    .line 323
    .line 324
    new-instance v4, Lcom/android/systemui/monet/HueExpressiveSecondary;

    .line 325
    .line 326
    invoke-direct {v4}, Lcom/android/systemui/monet/HueExpressiveSecondary;-><init>()V

    .line 327
    .line 328
    .line 329
    new-instance v7, Lcom/android/systemui/monet/ChromaConstant;

    .line 330
    .line 331
    invoke-direct {v7, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 332
    .line 333
    .line 334
    invoke-direct {v6, v4, v7}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 335
    .line 336
    .line 337
    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    .line 338
    .line 339
    new-instance v4, Lcom/android/systemui/monet/HueExpressiveTertiary;

    .line 340
    .line 341
    invoke-direct {v4}, Lcom/android/systemui/monet/HueExpressiveTertiary;-><init>()V

    .line 342
    .line 343
    .line 344
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 345
    .line 346
    const-wide/high16 v11, 0x4040000000000000L    # 32.0

    .line 347
    .line 348
    invoke-direct {v8, v11, v12}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 349
    .line 350
    .line 351
    invoke-direct {v7, v4, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 352
    .line 353
    .line 354
    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    .line 355
    .line 356
    new-instance v4, Lcom/android/systemui/monet/HueAdd;

    .line 357
    .line 358
    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    .line 359
    .line 360
    invoke-direct {v4, v11, v12}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 361
    .line 362
    .line 363
    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    .line 364
    .line 365
    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    .line 366
    .line 367
    invoke-direct {v9, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 368
    .line 369
    .line 370
    invoke-direct {v8, v4, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 371
    .line 372
    .line 373
    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    .line 374
    .line 375
    new-instance v4, Lcom/android/systemui/monet/HueAdd;

    .line 376
    .line 377
    invoke-direct {v4, v11, v12}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 378
    .line 379
    .line 380
    new-instance v11, Lcom/android/systemui/monet/ChromaConstant;

    .line 381
    .line 382
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    .line 383
    .line 384
    invoke-direct {v11, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 385
    .line 386
    .line 387
    invoke-direct {v9, v4, v11}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 388
    .line 389
    .line 390
    move-object v4, v10

    .line 391
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 392
    .line 393
    .line 394
    const-string v4, "EXPRESSIVE"

    .line 395
    .line 396
    const/4 v5, 0x3

    .line 397
    invoke-direct {v3, v4, v5, v10}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 398
    .line 399
    .line 400
    sput-object v3, Lcom/android/systemui/monet/Style;->EXPRESSIVE:Lcom/android/systemui/monet/Style;

    .line 401
    .line 402
    new-instance v4, Lcom/android/systemui/monet/Style;

    .line 403
    .line 404
    new-instance v11, Lcom/android/systemui/monet/CoreSpec;

    .line 405
    .line 406
    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    .line 407
    .line 408
    new-instance v5, Lcom/android/systemui/monet/HueSource;

    .line 409
    .line 410
    invoke-direct {v5}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 411
    .line 412
    .line 413
    new-instance v7, Lcom/android/systemui/monet/ChromaConstant;

    .line 414
    .line 415
    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    .line 416
    .line 417
    invoke-direct {v7, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 418
    .line 419
    .line 420
    invoke-direct {v6, v5, v7}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 421
    .line 422
    .line 423
    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    .line 424
    .line 425
    new-instance v5, Lcom/android/systemui/monet/HueSource;

    .line 426
    .line 427
    invoke-direct {v5}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 428
    .line 429
    .line 430
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 431
    .line 432
    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    .line 433
    .line 434
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 435
    .line 436
    .line 437
    invoke-direct {v7, v5, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 438
    .line 439
    .line 440
    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    .line 441
    .line 442
    new-instance v5, Lcom/android/systemui/monet/HueAdd;

    .line 443
    .line 444
    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    .line 445
    .line 446
    invoke-direct {v5, v9, v10}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 447
    .line 448
    .line 449
    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    .line 450
    .line 451
    const-wide/high16 v14, 0x4038000000000000L    # 24.0

    .line 452
    .line 453
    invoke-direct {v9, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 454
    .line 455
    .line 456
    invoke-direct {v8, v5, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 457
    .line 458
    .line 459
    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    .line 460
    .line 461
    new-instance v5, Lcom/android/systemui/monet/HueSource;

    .line 462
    .line 463
    invoke-direct {v5}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 464
    .line 465
    .line 466
    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    .line 467
    .line 468
    const-wide/16 v14, 0x0

    .line 469
    .line 470
    invoke-direct {v10, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 471
    .line 472
    .line 473
    invoke-direct {v9, v5, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 474
    .line 475
    .line 476
    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    .line 477
    .line 478
    new-instance v5, Lcom/android/systemui/monet/HueSource;

    .line 479
    .line 480
    invoke-direct {v5}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 481
    .line 482
    .line 483
    new-instance v12, Lcom/android/systemui/monet/ChromaConstant;

    .line 484
    .line 485
    invoke-direct {v12, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 486
    .line 487
    .line 488
    invoke-direct {v10, v5, v12}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 489
    .line 490
    .line 491
    move-object v5, v11

    .line 492
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 493
    .line 494
    .line 495
    const-string v5, "RAINBOW"

    .line 496
    .line 497
    const/4 v6, 0x4

    .line 498
    invoke-direct {v4, v5, v6, v11}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 499
    .line 500
    .line 501
    sput-object v4, Lcom/android/systemui/monet/Style;->RAINBOW:Lcom/android/systemui/monet/Style;

    .line 502
    .line 503
    new-instance v5, Lcom/android/systemui/monet/Style;

    .line 504
    .line 505
    new-instance v12, Lcom/android/systemui/monet/CoreSpec;

    .line 506
    .line 507
    new-instance v7, Lcom/android/systemui/monet/TonalSpec;

    .line 508
    .line 509
    new-instance v6, Lcom/android/systemui/monet/HueSubtract;

    .line 510
    .line 511
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    .line 512
    .line 513
    invoke-direct {v6, v8, v9}, Lcom/android/systemui/monet/HueSubtract;-><init>(D)V

    .line 514
    .line 515
    .line 516
    new-instance v10, Lcom/android/systemui/monet/ChromaConstant;

    .line 517
    .line 518
    const-wide/high16 v14, 0x4048000000000000L    # 48.0

    .line 519
    .line 520
    invoke-direct {v10, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 521
    .line 522
    .line 523
    invoke-direct {v7, v6, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 524
    .line 525
    .line 526
    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    .line 527
    .line 528
    new-instance v6, Lcom/android/systemui/monet/HueSubtract;

    .line 529
    .line 530
    invoke-direct {v6, v8, v9}, Lcom/android/systemui/monet/HueSubtract;-><init>(D)V

    .line 531
    .line 532
    .line 533
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 534
    .line 535
    const-wide/high16 v13, 0x4042000000000000L    # 36.0

    .line 536
    .line 537
    invoke-direct {v8, v13, v14}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 538
    .line 539
    .line 540
    invoke-direct {v10, v6, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 541
    .line 542
    .line 543
    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    .line 544
    .line 545
    new-instance v6, Lcom/android/systemui/monet/HueSource;

    .line 546
    .line 547
    invoke-direct {v6}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 548
    .line 549
    .line 550
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 551
    .line 552
    invoke-direct {v8, v13, v14}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 553
    .line 554
    .line 555
    invoke-direct {v9, v6, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 556
    .line 557
    .line 558
    new-instance v11, Lcom/android/systemui/monet/TonalSpec;

    .line 559
    .line 560
    new-instance v6, Lcom/android/systemui/monet/HueSource;

    .line 561
    .line 562
    invoke-direct {v6}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 563
    .line 564
    .line 565
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 566
    .line 567
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    .line 568
    .line 569
    invoke-direct {v8, v13, v14}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 570
    .line 571
    .line 572
    invoke-direct {v11, v6, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 573
    .line 574
    .line 575
    new-instance v13, Lcom/android/systemui/monet/TonalSpec;

    .line 576
    .line 577
    new-instance v6, Lcom/android/systemui/monet/HueSource;

    .line 578
    .line 579
    invoke-direct {v6}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 580
    .line 581
    .line 582
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 583
    .line 584
    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    .line 585
    .line 586
    invoke-direct {v8, v14, v15}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 587
    .line 588
    .line 589
    invoke-direct {v13, v6, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 590
    .line 591
    .line 592
    move-object v6, v12

    .line 593
    move-object v8, v10

    .line 594
    move-object v10, v11

    .line 595
    move-object v11, v13

    .line 596
    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 597
    .line 598
    .line 599
    const-string v6, "FRUIT_SALAD"

    .line 600
    .line 601
    const/4 v7, 0x5

    .line 602
    invoke-direct {v5, v6, v7, v12}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 603
    .line 604
    .line 605
    sput-object v5, Lcom/android/systemui/monet/Style;->FRUIT_SALAD:Lcom/android/systemui/monet/Style;

    .line 606
    .line 607
    new-instance v6, Lcom/android/systemui/monet/Style;

    .line 608
    .line 609
    new-instance v13, Lcom/android/systemui/monet/CoreSpec;

    .line 610
    .line 611
    new-instance v8, Lcom/android/systemui/monet/TonalSpec;

    .line 612
    .line 613
    new-instance v7, Lcom/android/systemui/monet/HueSource;

    .line 614
    .line 615
    invoke-direct {v7}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 616
    .line 617
    .line 618
    new-instance v9, Lcom/android/systemui/monet/ChromaSource;

    .line 619
    .line 620
    invoke-direct {v9}, Lcom/android/systemui/monet/ChromaSource;-><init>()V

    .line 621
    .line 622
    .line 623
    invoke-direct {v8, v7, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 624
    .line 625
    .line 626
    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    .line 627
    .line 628
    new-instance v7, Lcom/android/systemui/monet/HueSource;

    .line 629
    .line 630
    invoke-direct {v7}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 631
    .line 632
    .line 633
    new-instance v10, Lcom/android/systemui/monet/ChromaMultiple;

    .line 634
    .line 635
    const-wide v11, 0x3fd51eb851eb851fL    # 0.33

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    invoke-direct {v10, v11, v12}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    .line 641
    .line 642
    .line 643
    invoke-direct {v9, v7, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 644
    .line 645
    .line 646
    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    .line 647
    .line 648
    new-instance v7, Lcom/android/systemui/monet/HueSource;

    .line 649
    .line 650
    invoke-direct {v7}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 651
    .line 652
    .line 653
    new-instance v11, Lcom/android/systemui/monet/ChromaMultiple;

    .line 654
    .line 655
    const-wide v14, 0x3fe51eb851eb851fL    # 0.66

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    invoke-direct {v11, v14, v15}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    .line 661
    .line 662
    .line 663
    invoke-direct {v10, v7, v11}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 664
    .line 665
    .line 666
    new-instance v11, Lcom/android/systemui/monet/TonalSpec;

    .line 667
    .line 668
    new-instance v7, Lcom/android/systemui/monet/HueSource;

    .line 669
    .line 670
    invoke-direct {v7}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 671
    .line 672
    .line 673
    new-instance v12, Lcom/android/systemui/monet/ChromaMultiple;

    .line 674
    .line 675
    const-wide v14, 0x3fb5532617c1bda5L    # 0.0833

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    invoke-direct {v12, v14, v15}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    .line 681
    .line 682
    .line 683
    invoke-direct {v11, v7, v12}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 684
    .line 685
    .line 686
    new-instance v12, Lcom/android/systemui/monet/TonalSpec;

    .line 687
    .line 688
    new-instance v7, Lcom/android/systemui/monet/HueSource;

    .line 689
    .line 690
    invoke-direct {v7}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 691
    .line 692
    .line 693
    new-instance v14, Lcom/android/systemui/monet/ChromaMultiple;

    .line 694
    .line 695
    move-object v15, v4

    .line 696
    move-object/from16 v16, v5

    .line 697
    .line 698
    const-wide v4, 0x3fc5532617c1bda5L    # 0.1666

    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    invoke-direct {v14, v4, v5}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    .line 704
    .line 705
    .line 706
    invoke-direct {v12, v7, v14}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 707
    .line 708
    .line 709
    move-object v7, v13

    .line 710
    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 711
    .line 712
    .line 713
    const-string v4, "CONTENT"

    .line 714
    .line 715
    const/4 v5, 0x6

    .line 716
    invoke-direct {v6, v4, v5, v13}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 717
    .line 718
    .line 719
    sput-object v6, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    .line 720
    .line 721
    new-instance v7, Lcom/android/systemui/monet/Style;

    .line 722
    .line 723
    new-instance v4, Lcom/android/systemui/monet/CoreSpec;

    .line 724
    .line 725
    new-instance v9, Lcom/android/systemui/monet/TonalSpec;

    .line 726
    .line 727
    new-instance v5, Lcom/android/systemui/monet/HueSource;

    .line 728
    .line 729
    invoke-direct {v5}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 730
    .line 731
    .line 732
    new-instance v8, Lcom/android/systemui/monet/ChromaConstant;

    .line 733
    .line 734
    const-wide/16 v10, 0x0

    .line 735
    .line 736
    invoke-direct {v8, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 737
    .line 738
    .line 739
    invoke-direct {v9, v5, v8}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 740
    .line 741
    .line 742
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 743
    .line 744
    new-instance v8, Lcom/android/systemui/monet/HueSource;

    .line 745
    .line 746
    invoke-direct {v8}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 747
    .line 748
    .line 749
    new-instance v12, Lcom/android/systemui/monet/ChromaConstant;

    .line 750
    .line 751
    invoke-direct {v12, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 752
    .line 753
    .line 754
    invoke-direct {v5, v8, v12}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 755
    .line 756
    .line 757
    new-instance v12, Lcom/android/systemui/monet/TonalSpec;

    .line 758
    .line 759
    new-instance v8, Lcom/android/systemui/monet/HueSource;

    .line 760
    .line 761
    invoke-direct {v8}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 762
    .line 763
    .line 764
    new-instance v13, Lcom/android/systemui/monet/ChromaConstant;

    .line 765
    .line 766
    invoke-direct {v13, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 767
    .line 768
    .line 769
    invoke-direct {v12, v8, v13}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 770
    .line 771
    .line 772
    new-instance v13, Lcom/android/systemui/monet/TonalSpec;

    .line 773
    .line 774
    new-instance v8, Lcom/android/systemui/monet/HueSource;

    .line 775
    .line 776
    invoke-direct {v8}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 777
    .line 778
    .line 779
    new-instance v14, Lcom/android/systemui/monet/ChromaConstant;

    .line 780
    .line 781
    invoke-direct {v14, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 782
    .line 783
    .line 784
    invoke-direct {v13, v8, v14}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 785
    .line 786
    .line 787
    new-instance v14, Lcom/android/systemui/monet/TonalSpec;

    .line 788
    .line 789
    new-instance v8, Lcom/android/systemui/monet/HueSource;

    .line 790
    .line 791
    invoke-direct {v8}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 792
    .line 793
    .line 794
    move-object/from16 v17, v6

    .line 795
    .line 796
    new-instance v6, Lcom/android/systemui/monet/ChromaConstant;

    .line 797
    .line 798
    invoke-direct {v6, v10, v11}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 799
    .line 800
    .line 801
    invoke-direct {v14, v8, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 802
    .line 803
    .line 804
    move-object v8, v4

    .line 805
    move-object v10, v5

    .line 806
    move-object v11, v12

    .line 807
    move-object v12, v13

    .line 808
    move-object v13, v14

    .line 809
    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 810
    .line 811
    .line 812
    const-string v5, "MONOCHROMATIC"

    .line 813
    .line 814
    const/4 v6, 0x7

    .line 815
    invoke-direct {v7, v5, v6, v4}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 816
    .line 817
    .line 818
    sput-object v7, Lcom/android/systemui/monet/Style;->MONOCHROMATIC:Lcom/android/systemui/monet/Style;

    .line 819
    .line 820
    new-instance v8, Lcom/android/systemui/monet/Style;

    .line 821
    .line 822
    new-instance v4, Lcom/android/systemui/monet/CoreSpec;

    .line 823
    .line 824
    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    .line 825
    .line 826
    new-instance v5, Lcom/android/systemui/monet/HueSource;

    .line 827
    .line 828
    invoke-direct {v5}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 829
    .line 830
    .line 831
    new-instance v6, Lcom/android/systemui/monet/ChromaBound;

    .line 832
    .line 833
    new-instance v23, Lcom/android/systemui/monet/ChromaSource;

    .line 834
    .line 835
    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/monet/ChromaSource;-><init>()V

    .line 836
    .line 837
    .line 838
    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    .line 839
    .line 840
    sget-object v9, Lcom/android/systemui/monet/Chroma;->Companion:Lcom/android/systemui/monet/Chroma$Companion;

    .line 841
    .line 842
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    sget-wide v18, Lcom/android/systemui/monet/Chroma$Companion;->MAX_VALUE:D

    .line 846
    .line 847
    move-object/from16 v22, v6

    .line 848
    .line 849
    move-wide/from16 v26, v18

    .line 850
    .line 851
    invoke-direct/range {v22 .. v27}, Lcom/android/systemui/monet/ChromaBound;-><init>(Lcom/android/systemui/monet/Chroma;DD)V

    .line 852
    .line 853
    .line 854
    invoke-direct {v10, v5, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 855
    .line 856
    .line 857
    new-instance v11, Lcom/android/systemui/monet/TonalSpec;

    .line 858
    .line 859
    new-instance v5, Lcom/android/systemui/monet/HueAdd;

    .line 860
    .line 861
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 862
    .line 863
    invoke-direct {v5, v12, v13}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 864
    .line 865
    .line 866
    new-instance v6, Lcom/android/systemui/monet/ChromaBound;

    .line 867
    .line 868
    new-instance v9, Lcom/android/systemui/monet/ChromaMultiple;

    .line 869
    .line 870
    const-wide v12, 0x3feb333333333333L    # 0.85

    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    invoke-direct {v9, v12, v13}, Lcom/android/systemui/monet/ChromaMultiple;-><init>(D)V

    .line 876
    .line 877
    .line 878
    const-wide/high16 v22, 0x4031000000000000L    # 17.0

    .line 879
    .line 880
    const-wide/high16 v24, 0x4044000000000000L    # 40.0

    .line 881
    .line 882
    move-object/from16 v20, v6

    .line 883
    .line 884
    move-object/from16 v21, v9

    .line 885
    .line 886
    invoke-direct/range {v20 .. v25}, Lcom/android/systemui/monet/ChromaBound;-><init>(Lcom/android/systemui/monet/Chroma;DD)V

    .line 887
    .line 888
    .line 889
    invoke-direct {v11, v5, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 890
    .line 891
    .line 892
    new-instance v12, Lcom/android/systemui/monet/TonalSpec;

    .line 893
    .line 894
    new-instance v5, Lcom/android/systemui/monet/HueAdd;

    .line 895
    .line 896
    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    .line 897
    .line 898
    invoke-direct {v5, v13, v14}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 899
    .line 900
    .line 901
    new-instance v6, Lcom/android/systemui/monet/ChromaBound;

    .line 902
    .line 903
    new-instance v9, Lcom/android/systemui/monet/ChromaAdd;

    .line 904
    .line 905
    invoke-direct {v9, v13, v14}, Lcom/android/systemui/monet/ChromaAdd;-><init>(D)V

    .line 906
    .line 907
    .line 908
    const-wide/high16 v28, 0x4049000000000000L    # 50.0

    .line 909
    .line 910
    move-object/from16 v26, v6

    .line 911
    .line 912
    move-object/from16 v27, v9

    .line 913
    .line 914
    move-wide/from16 v30, v18

    .line 915
    .line 916
    invoke-direct/range {v26 .. v31}, Lcom/android/systemui/monet/ChromaBound;-><init>(Lcom/android/systemui/monet/Chroma;DD)V

    .line 917
    .line 918
    .line 919
    invoke-direct {v12, v5, v6}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 920
    .line 921
    .line 922
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 923
    .line 924
    new-instance v6, Lcom/android/systemui/monet/HueSource;

    .line 925
    .line 926
    invoke-direct {v6}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 927
    .line 928
    .line 929
    new-instance v9, Lcom/android/systemui/monet/ChromaConstant;

    .line 930
    .line 931
    const-wide/16 v13, 0x0

    .line 932
    .line 933
    invoke-direct {v9, v13, v14}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 934
    .line 935
    .line 936
    invoke-direct {v5, v6, v9}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 937
    .line 938
    .line 939
    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    .line 940
    .line 941
    new-instance v9, Lcom/android/systemui/monet/HueSource;

    .line 942
    .line 943
    invoke-direct {v9}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 944
    .line 945
    .line 946
    move-object/from16 v20, v7

    .line 947
    .line 948
    new-instance v7, Lcom/android/systemui/monet/ChromaConstant;

    .line 949
    .line 950
    invoke-direct {v7, v13, v14}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 951
    .line 952
    .line 953
    invoke-direct {v6, v9, v7}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 954
    .line 955
    .line 956
    move-object v9, v4

    .line 957
    move-object v7, v2

    .line 958
    move-object/from16 v21, v3

    .line 959
    .line 960
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 961
    .line 962
    move-object v13, v5

    .line 963
    move-object v14, v6

    .line 964
    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 965
    .line 966
    .line 967
    const-string v5, "CLOCK"

    .line 968
    .line 969
    const/16 v6, 0x8

    .line 970
    .line 971
    invoke-direct {v8, v5, v6, v4}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 972
    .line 973
    .line 974
    new-instance v9, Lcom/android/systemui/monet/Style;

    .line 975
    .line 976
    new-instance v4, Lcom/android/systemui/monet/CoreSpec;

    .line 977
    .line 978
    new-instance v5, Lcom/android/systemui/monet/TonalSpec;

    .line 979
    .line 980
    new-instance v6, Lcom/android/systemui/monet/HueSource;

    .line 981
    .line 982
    invoke-direct {v6}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 983
    .line 984
    .line 985
    new-instance v10, Lcom/android/systemui/monet/ChromaBound;

    .line 986
    .line 987
    new-instance v27, Lcom/android/systemui/monet/ChromaSource;

    .line 988
    .line 989
    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/monet/ChromaSource;-><init>()V

    .line 990
    .line 991
    .line 992
    const-wide v28, 0x4051800000000000L    # 70.0

    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    move-object/from16 v26, v10

    .line 998
    .line 999
    invoke-direct/range {v26 .. v31}, Lcom/android/systemui/monet/ChromaBound;-><init>(Lcom/android/systemui/monet/Chroma;DD)V

    .line 1000
    .line 1001
    .line 1002
    invoke-direct {v5, v6, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v6, Lcom/android/systemui/monet/TonalSpec;

    .line 1006
    .line 1007
    new-instance v10, Lcom/android/systemui/monet/HueAdd;

    .line 1008
    .line 1009
    invoke-direct {v10, v2, v3}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 1010
    .line 1011
    .line 1012
    new-instance v2, Lcom/android/systemui/monet/ChromaBound;

    .line 1013
    .line 1014
    new-instance v27, Lcom/android/systemui/monet/ChromaSource;

    .line 1015
    .line 1016
    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/monet/ChromaSource;-><init>()V

    .line 1017
    .line 1018
    .line 1019
    move-object/from16 v26, v2

    .line 1020
    .line 1021
    invoke-direct/range {v26 .. v31}, Lcom/android/systemui/monet/ChromaBound;-><init>(Lcom/android/systemui/monet/Chroma;DD)V

    .line 1022
    .line 1023
    .line 1024
    invoke-direct {v6, v10, v2}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 1025
    .line 1026
    .line 1027
    new-instance v2, Lcom/android/systemui/monet/TonalSpec;

    .line 1028
    .line 1029
    new-instance v3, Lcom/android/systemui/monet/HueAdd;

    .line 1030
    .line 1031
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 1032
    .line 1033
    invoke-direct {v3, v10, v11}, Lcom/android/systemui/monet/HueAdd;-><init>(D)V

    .line 1034
    .line 1035
    .line 1036
    new-instance v10, Lcom/android/systemui/monet/ChromaBound;

    .line 1037
    .line 1038
    new-instance v27, Lcom/android/systemui/monet/ChromaSource;

    .line 1039
    .line 1040
    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/monet/ChromaSource;-><init>()V

    .line 1041
    .line 1042
    .line 1043
    move-object/from16 v26, v10

    .line 1044
    .line 1045
    invoke-direct/range {v26 .. v31}, Lcom/android/systemui/monet/ChromaBound;-><init>(Lcom/android/systemui/monet/Chroma;DD)V

    .line 1046
    .line 1047
    .line 1048
    invoke-direct {v2, v3, v10}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v3, Lcom/android/systemui/monet/TonalSpec;

    .line 1052
    .line 1053
    new-instance v10, Lcom/android/systemui/monet/HueSource;

    .line 1054
    .line 1055
    invoke-direct {v10}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 1056
    .line 1057
    .line 1058
    new-instance v11, Lcom/android/systemui/monet/ChromaConstant;

    .line 1059
    .line 1060
    const-wide/16 v12, 0x0

    .line 1061
    .line 1062
    invoke-direct {v11, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 1063
    .line 1064
    .line 1065
    invoke-direct {v3, v10, v11}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 1066
    .line 1067
    .line 1068
    new-instance v10, Lcom/android/systemui/monet/TonalSpec;

    .line 1069
    .line 1070
    new-instance v11, Lcom/android/systemui/monet/HueSource;

    .line 1071
    .line 1072
    invoke-direct {v11}, Lcom/android/systemui/monet/HueSource;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    new-instance v14, Lcom/android/systemui/monet/ChromaConstant;

    .line 1076
    .line 1077
    invoke-direct {v14, v12, v13}, Lcom/android/systemui/monet/ChromaConstant;-><init>(D)V

    .line 1078
    .line 1079
    .line 1080
    invoke-direct {v10, v11, v14}, Lcom/android/systemui/monet/TonalSpec;-><init>(Lcom/android/systemui/monet/Hue;Lcom/android/systemui/monet/Chroma;)V

    .line 1081
    .line 1082
    .line 1083
    move-object/from16 v22, v4

    .line 1084
    .line 1085
    move-object/from16 v23, v5

    .line 1086
    .line 1087
    move-object/from16 v24, v6

    .line 1088
    .line 1089
    move-object/from16 v25, v2

    .line 1090
    .line 1091
    move-object/from16 v26, v3

    .line 1092
    .line 1093
    move-object/from16 v27, v10

    .line 1094
    .line 1095
    invoke-direct/range {v22 .. v27}, Lcom/android/systemui/monet/CoreSpec;-><init>(Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;Lcom/android/systemui/monet/TonalSpec;)V

    .line 1096
    .line 1097
    .line 1098
    const-string v2, "CLOCK_VIBRANT"

    .line 1099
    .line 1100
    const/16 v3, 0x9

    .line 1101
    .line 1102
    invoke-direct {v9, v2, v3, v4}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V

    .line 1103
    .line 1104
    .line 1105
    move-object v2, v7

    .line 1106
    move-object/from16 v3, v21

    .line 1107
    .line 1108
    move-object v4, v15

    .line 1109
    move-object/from16 v5, v16

    .line 1110
    .line 1111
    move-object/from16 v6, v17

    .line 1112
    .line 1113
    move-object/from16 v7, v20

    .line 1114
    .line 1115
    filled-new-array/range {v0 .. v9}, [Lcom/android/systemui/monet/Style;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    sput-object v0, Lcom/android/systemui/monet/Style;->$VALUES:[Lcom/android/systemui/monet/Style;

    .line 1120
    .line 1121
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/systemui/monet/CoreSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/monet/CoreSpec;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/monet/Style;->coreSpec:Lcom/android/systemui/monet/CoreSpec;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/monet/Style;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/monet/Style;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/monet/Style;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/monet/Style;->$VALUES:[Lcom/android/systemui/monet/Style;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/monet/Style;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCoreSpec$frameworks__base__packages__SystemUI__monet__android_common__monet()Lcom/android/systemui/monet/CoreSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/monet/Style;->coreSpec:Lcom/android/systemui/monet/CoreSpec;

    .line 2
    .line 3
    return-object p0
.end method
