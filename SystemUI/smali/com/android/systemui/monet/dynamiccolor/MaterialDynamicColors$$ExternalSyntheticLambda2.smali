.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 4
    .line 5
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 6
    .line 7
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    .line 8
    .line 9
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 10
    .line 11
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    .line 12
    .line 13
    const/4 v10, 0x1

    .line 14
    const/4 v11, 0x0

    .line 15
    const-wide v12, 0x4056800000000000L    # 90.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_10

    .line 24
    .line 25
    :pswitch_0
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 26
    .line 27
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 31
    .line 32
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 33
    .line 34
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 35
    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v10, v11

    .line 40
    :goto_0
    if-eqz v10, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-wide v4, v12

    .line 44
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_2
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 50
    .line 51
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_3
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 55
    .line 56
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 57
    .line 58
    sget-object v4, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 59
    .line 60
    if-ne p0, v4, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v10, v11

    .line 64
    :goto_2
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 65
    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-wide v2, v12

    .line 72
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    if-eqz p0, :cond_5

    .line 78
    .line 79
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 80
    .line 81
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_4
    return-object p0

    .line 86
    :pswitch_4
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 87
    .line 88
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_5
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 92
    .line 93
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 94
    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_6
    move-wide v6, v12

    .line 99
    :goto_5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_6
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 105
    .line 106
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_7
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 110
    .line 111
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 112
    .line 113
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 114
    .line 115
    if-ne p0, p1, :cond_7

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_7
    move v10, v11

    .line 119
    :goto_6
    if-eqz v10, :cond_8

    .line 120
    .line 121
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    goto :goto_7

    .line 126
    :cond_8
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :goto_7
    return-object p0

    .line 131
    :pswitch_8
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 132
    .line 133
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 134
    .line 135
    return-object p0

    .line 136
    :pswitch_9
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 137
    .line 138
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 139
    .line 140
    if-eqz p0, :cond_9

    .line 141
    .line 142
    move-wide v2, v12

    .line 143
    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_a
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 149
    .line 150
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_b
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 154
    .line 155
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 156
    .line 157
    if-eqz p0, :cond_a

    .line 158
    .line 159
    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_a
    const-wide p0, 0x4058800000000000L    # 98.0

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :goto_8
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_c
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 173
    .line 174
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_d
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 178
    .line 179
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 182
    .line 183
    iget-wide p0, p0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 184
    .line 185
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_e
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 191
    .line 192
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_f
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 196
    .line 197
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 198
    .line 199
    if-eqz p0, :cond_b

    .line 200
    .line 201
    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_b
    const-wide p0, 0x4057800000000000L    # 94.0

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :goto_9
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    return-object p0

    .line 214
    :pswitch_10
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 215
    .line 216
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 217
    .line 218
    return-object p0

    .line 219
    :pswitch_11
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 220
    .line 221
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 222
    .line 223
    return-object p0

    .line 224
    :pswitch_12
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 225
    .line 226
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 227
    .line 228
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 229
    .line 230
    if-ne p0, p1, :cond_c

    .line 231
    .line 232
    goto :goto_a

    .line 233
    :cond_c
    move v10, v11

    .line 234
    :goto_a
    if-eqz v10, :cond_d

    .line 235
    .line 236
    move-wide v6, v12

    .line 237
    :cond_d
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    return-object p0

    .line 242
    :pswitch_13
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 243
    .line 244
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 245
    .line 246
    return-object p0

    .line 247
    :pswitch_14
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 248
    .line 249
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 250
    .line 251
    sget-object v0, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 252
    .line 253
    if-ne p0, v0, :cond_e

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_e
    move v10, v11

    .line 257
    :goto_b
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 258
    .line 259
    if-eqz v10, :cond_10

    .line 260
    .line 261
    if-eqz p0, :cond_f

    .line 262
    .line 263
    goto :goto_c

    .line 264
    :cond_f
    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    .line 265
    .line 266
    :goto_c
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    goto :goto_d

    .line 271
    :cond_10
    if-eqz p0, :cond_11

    .line 272
    .line 273
    move-wide v4, v8

    .line 274
    :cond_11
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    :goto_d
    return-object p0

    .line 279
    :pswitch_15
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 280
    .line 281
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 282
    .line 283
    return-object p0

    .line 284
    :pswitch_16
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 285
    .line 286
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 287
    .line 288
    if-eqz p0, :cond_12

    .line 289
    .line 290
    move-wide v4, v8

    .line 291
    :cond_12
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    return-object p0

    .line 296
    :pswitch_17
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 297
    .line 298
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 299
    .line 300
    return-object p0

    .line 301
    :pswitch_18
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 302
    .line 303
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 304
    .line 305
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 306
    .line 307
    if-ne p0, p1, :cond_13

    .line 308
    .line 309
    goto :goto_e

    .line 310
    :cond_13
    move v10, v11

    .line 311
    :goto_e
    if-eqz v10, :cond_14

    .line 312
    .line 313
    goto :goto_f

    .line 314
    :cond_14
    move-wide v8, v12

    .line 315
    :goto_f
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    return-object p0

    .line 320
    :pswitch_19
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 321
    .line 322
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 323
    .line 324
    return-object p0

    .line 325
    :pswitch_1a
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 326
    .line 327
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 328
    .line 329
    if-eqz p0, :cond_15

    .line 330
    .line 331
    move-wide v6, v8

    .line 332
    :cond_15
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    return-object p0

    .line 337
    :pswitch_1b
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 338
    .line 339
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_1c
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 343
    .line 344
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 345
    .line 346
    iget-object p0, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 347
    .line 348
    iget-wide p0, p0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 349
    .line 350
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    return-object p0

    .line 355
    :goto_10
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 356
    .line 357
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 358
    .line 359
    if-eqz p0, :cond_16

    .line 360
    .line 361
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 362
    .line 363
    :cond_16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    nop

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
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
