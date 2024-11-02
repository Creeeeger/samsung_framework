.class public final enum Lcom/samsung/android/nexus/particle/emitter/FactorType;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/nexus/particle/emitter/FactorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

.field public static final enum WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;


# instance fields
.field final accelerationIdx:I

.field final idx:I

.field final max:F

.field final min:F

.field final opType:I

.field rangeChecker:Lcom/samsung/android/nexus/base/utils/RangeChecker;

.field final speedIdx:I

.field final valueIdx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    new-instance v2, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 5
    .line 6
    const/high16 v10, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v15

    .line 12
    const/high16 v3, 0x4f000000

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v15, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "WIDTH"

    .line 22
    .line 23
    const/4 v14, 0x0

    .line 24
    invoke-direct {v1, v4, v14, v14, v2}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 28
    .line 29
    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 30
    .line 31
    move-object v1, v2

    .line 32
    new-instance v4, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 33
    .line 34
    invoke-direct {v4, v15, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "HEIGHT"

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    invoke-direct {v2, v3, v11, v14, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 44
    .line 45
    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 46
    .line 47
    move-object v2, v3

    .line 48
    const-string v4, "POS"

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    invoke-direct {v3, v4, v5, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v3, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 55
    .line 56
    new-instance v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 57
    .line 58
    move-object v3, v4

    .line 59
    const-string v5, "POS_X"

    .line 60
    .line 61
    const/4 v6, 0x3

    .line 62
    invoke-direct {v4, v5, v6, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 66
    .line 67
    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    const-string v6, "POS_Y"

    .line 71
    .line 72
    const/4 v7, 0x4

    .line 73
    invoke-direct {v5, v6, v7, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    sput-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 77
    .line 78
    new-instance v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 79
    .line 80
    move-object v5, v6

    .line 81
    const-string v7, "ROTATION"

    .line 82
    .line 83
    const/4 v8, 0x5

    .line 84
    invoke-direct {v6, v7, v8, v14}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 88
    .line 89
    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 90
    .line 91
    move-object v6, v7

    .line 92
    const-string v17, "ALPHA"

    .line 93
    .line 94
    const/16 v18, 0x6

    .line 95
    .line 96
    const/16 v19, 0x1

    .line 97
    .line 98
    const/high16 v20, 0x3f800000    # 1.0f

    .line 99
    .line 100
    new-instance v8, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 101
    .line 102
    const/4 v9, 0x0

    .line 103
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-direct {v8, v13, v15}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 108
    .line 109
    .line 110
    move-object/from16 v16, v7

    .line 111
    .line 112
    move-object/from16 v21, v8

    .line 113
    .line 114
    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 115
    .line 116
    .line 117
    sput-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 118
    .line 119
    new-instance v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 120
    .line 121
    move-object v7, v8

    .line 122
    const-string v9, "SCALE"

    .line 123
    .line 124
    const/4 v12, 0x7

    .line 125
    invoke-direct {v8, v9, v12, v11, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIF)V

    .line 126
    .line 127
    .line 128
    sput-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 129
    .line 130
    new-instance v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 131
    .line 132
    move-object v8, v9

    .line 133
    const-string v12, "SCALE_X"

    .line 134
    .line 135
    const/16 v14, 0x8

    .line 136
    .line 137
    invoke-direct {v9, v12, v14, v11, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIF)V

    .line 138
    .line 139
    .line 140
    sput-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 141
    .line 142
    new-instance v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 143
    .line 144
    move-object v9, v12

    .line 145
    const-string v14, "SCALE_Y"

    .line 146
    .line 147
    move-object/from16 v17, v15

    .line 148
    .line 149
    const/16 v15, 0x9

    .line 150
    .line 151
    invoke-direct {v12, v14, v15, v11, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIF)V

    .line 152
    .line 153
    .line 154
    sput-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 155
    .line 156
    new-instance v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 157
    .line 158
    move-object v10, v11

    .line 159
    new-instance v12, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 160
    .line 161
    const/high16 v14, 0x437f0000    # 255.0f

    .line 162
    .line 163
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    invoke-direct {v12, v13, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 168
    .line 169
    .line 170
    const-string v15, "COLOR_ALPHA"

    .line 171
    .line 172
    move-object/from16 v18, v0

    .line 173
    .line 174
    const/16 v0, 0xa

    .line 175
    .line 176
    move-object/from16 v19, v1

    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    invoke-direct {v11, v15, v0, v1, v12}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 180
    .line 181
    .line 182
    sput-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 183
    .line 184
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 185
    .line 186
    move-object v11, v0

    .line 187
    new-instance v12, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 188
    .line 189
    invoke-direct {v12, v13, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 190
    .line 191
    .line 192
    const-string v15, "COLOR_RED"

    .line 193
    .line 194
    move-object/from16 v20, v2

    .line 195
    .line 196
    const/16 v2, 0xb

    .line 197
    .line 198
    invoke-direct {v0, v15, v2, v1, v12}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 199
    .line 200
    .line 201
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 202
    .line 203
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 204
    .line 205
    move-object v12, v0

    .line 206
    new-instance v2, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 207
    .line 208
    invoke-direct {v2, v13, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 209
    .line 210
    .line 211
    const-string v15, "COLOR_GREEN"

    .line 212
    .line 213
    move-object/from16 v16, v13

    .line 214
    .line 215
    const/16 v13, 0xc

    .line 216
    .line 217
    invoke-direct {v0, v15, v13, v1, v2}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 218
    .line 219
    .line 220
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 221
    .line 222
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 223
    .line 224
    move-object/from16 v2, v16

    .line 225
    .line 226
    move-object v13, v0

    .line 227
    new-instance v15, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 228
    .line 229
    invoke-direct {v15, v2, v14}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 230
    .line 231
    .line 232
    const-string v14, "COLOR_BLUE"

    .line 233
    .line 234
    move-object/from16 v21, v3

    .line 235
    .line 236
    const/16 v3, 0xd

    .line 237
    .line 238
    invoke-direct {v0, v14, v3, v1, v15}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 239
    .line 240
    .line 241
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 242
    .line 243
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 244
    .line 245
    move-object v14, v0

    .line 246
    new-instance v3, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 247
    .line 248
    const/high16 v15, 0x43b40000    # 360.0f

    .line 249
    .line 250
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    invoke-direct {v3, v2, v15}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 255
    .line 256
    .line 257
    const-string v15, "COLOR_HUE"

    .line 258
    .line 259
    move-object/from16 v22, v4

    .line 260
    .line 261
    const/16 v4, 0xe

    .line 262
    .line 263
    invoke-direct {v0, v15, v4, v1, v3}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 267
    .line 268
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 269
    .line 270
    move-object/from16 v3, v17

    .line 271
    .line 272
    move-object v15, v0

    .line 273
    new-instance v4, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 274
    .line 275
    invoke-direct {v4, v2, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 276
    .line 277
    .line 278
    move-object/from16 v17, v5

    .line 279
    .line 280
    const-string v5, "COLOR_SATURATION"

    .line 281
    .line 282
    move-object/from16 v23, v6

    .line 283
    .line 284
    const/16 v6, 0xf

    .line 285
    .line 286
    invoke-direct {v0, v5, v6, v1, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 287
    .line 288
    .line 289
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 290
    .line 291
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 292
    .line 293
    move-object/from16 v16, v0

    .line 294
    .line 295
    new-instance v4, Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 296
    .line 297
    invoke-direct {v4, v2, v3}, Lcom/samsung/android/nexus/base/utils/RangeChecker;-><init>(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 298
    .line 299
    .line 300
    const-string v2, "COLOR_VALUE"

    .line 301
    .line 302
    const/16 v3, 0x10

    .line 303
    .line 304
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V

    .line 305
    .line 306
    .line 307
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 308
    .line 309
    move-object/from16 v5, v17

    .line 310
    .line 311
    move-object/from16 v0, v18

    .line 312
    .line 313
    move-object/from16 v1, v19

    .line 314
    .line 315
    move-object/from16 v2, v20

    .line 316
    .line 317
    move-object/from16 v3, v21

    .line 318
    .line 319
    move-object/from16 v4, v22

    .line 320
    .line 321
    move-object/from16 v6, v23

    .line 322
    .line 323
    filled-new-array/range {v0 .. v16}, [Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 328
    .line 329
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Lcom/samsung/android/nexus/base/utils/RangeChecker;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    mul-int/lit8 p2, p1, 0x3

    add-int/lit8 p2, p2, 0x0

    .line 8
    iput p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    mul-int/lit8 p2, p1, 0x3

    add-int/lit8 p2, p2, 0x1

    .line 9
    iput p2, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x2

    .line 10
    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    .line 11
    iput p4, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->min:F

    .line 12
    iput p5, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->max:F

    .line 13
    iput-object p6, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->rangeChecker:Lcom/samsung/android/nexus/base/utils/RangeChecker;

    .line 14
    iput p3, p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->opType:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFLcom/samsung/android/nexus/base/utils/RangeChecker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Lcom/samsung/android/nexus/base/utils/RangeChecker;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move-object v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/samsung/android/nexus/base/utils/RangeChecker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/nexus/base/utils/RangeChecker;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/nexus/particle/emitter/FactorType;-><init>(Ljava/lang/String;IIFFLcom/samsung/android/nexus/base/utils/RangeChecker;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/nexus/particle/emitter/FactorType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/nexus/particle/emitter/FactorType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/FactorType;->$VALUES:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/nexus/particle/emitter/FactorType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/nexus/particle/emitter/FactorType;

    .line 8
    .line 9
    return-object v0
.end method
