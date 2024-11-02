.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;
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
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;->$r8$classId:I

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
    .locals 12

    .line 1
    iget p0, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 4
    .line 5
    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    .line 6
    .line 7
    const-wide v4, 0x4056800000000000L    # 90.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 13
    .line 14
    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    const/4 v11, 0x0

    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_e

    .line 22
    .line 23
    :pswitch_0
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 24
    .line 25
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-wide v2, v8

    .line 31
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 37
    .line 38
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_2
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 42
    .line 43
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    const-wide/high16 v4, 0x4036000000000000L    # 22.0

    .line 48
    .line 49
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_3
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 55
    .line 56
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_4
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 60
    .line 61
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 62
    .line 63
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 64
    .line 65
    if-ne p0, p1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v10, v11

    .line 69
    :goto_1
    if-eqz v10, :cond_3

    .line 70
    .line 71
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_2
    return-object p0

    .line 81
    :pswitch_5
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 82
    .line 83
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_6
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 87
    .line 88
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 89
    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    move-wide v2, v8

    .line 93
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_7
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 99
    .line 100
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_8
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 104
    .line 105
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 106
    .line 107
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 108
    .line 109
    if-ne p0, p1, :cond_5

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    move v10, v11

    .line 113
    :goto_3
    if-eqz v10, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move-wide v0, v6

    .line 117
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_9
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 123
    .line 124
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_a
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 128
    .line 129
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 130
    .line 131
    if-eqz p0, :cond_7

    .line 132
    .line 133
    move-wide v4, v8

    .line 134
    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_b
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 140
    .line 141
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_c
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 145
    .line 146
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 147
    .line 148
    if-eqz p0, :cond_8

    .line 149
    .line 150
    move-wide v4, v6

    .line 151
    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_d
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 157
    .line 158
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_e
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 162
    .line 163
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 164
    .line 165
    if-eqz p0, :cond_9

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_9
    const-wide/high16 v6, 0x4058000000000000L    # 96.0

    .line 169
    .line 170
    :goto_5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :pswitch_f
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 176
    .line 177
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_10
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 181
    .line 182
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 183
    .line 184
    if-eqz p0, :cond_a

    .line 185
    .line 186
    const-wide/high16 p0, 0x4031000000000000L    # 17.0

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_a
    const-wide/high16 p0, 0x4057000000000000L    # 92.0

    .line 190
    .line 191
    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_11
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 197
    .line 198
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_12
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 202
    .line 203
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 204
    .line 205
    return-object p0

    .line 206
    :pswitch_13
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 207
    .line 208
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 209
    .line 210
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 211
    .line 212
    if-ne p0, v2, :cond_b

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_b
    move v10, v11

    .line 216
    :goto_7
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 217
    .line 218
    if-eqz v10, :cond_d

    .line 219
    .line 220
    if-eqz p0, :cond_c

    .line 221
    .line 222
    move-wide v0, v6

    .line 223
    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    goto :goto_8

    .line 228
    :cond_d
    if-eqz p0, :cond_e

    .line 229
    .line 230
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 231
    .line 232
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    :goto_8
    return-object p0

    .line 237
    :pswitch_14
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 238
    .line 239
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 240
    .line 241
    return-object p0

    .line 242
    :pswitch_15
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 243
    .line 244
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 245
    .line 246
    sget-object p1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 247
    .line 248
    if-ne p0, p1, :cond_f

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_f
    move v10, v11

    .line 252
    :goto_9
    if-eqz v10, :cond_10

    .line 253
    .line 254
    move-wide v2, v8

    .line 255
    :cond_10
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    return-object p0

    .line 260
    :pswitch_16
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 261
    .line 262
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 263
    .line 264
    return-object p0

    .line 265
    :pswitch_17
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-eqz p0, :cond_11

    .line 272
    .line 273
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->sourceColorHct:Lcom/android/systemui/monet/hct/Hct;

    .line 274
    .line 275
    invoke-static {p0, p1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 276
    .line 277
    .line 278
    move-result-wide p0

    .line 279
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    goto :goto_c

    .line 284
    :cond_11
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 285
    .line 286
    sget-object v0, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 287
    .line 288
    if-ne p0, v0, :cond_12

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_12
    move v10, v11

    .line 292
    :goto_a
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 293
    .line 294
    if-eqz v10, :cond_14

    .line 295
    .line 296
    if-eqz p0, :cond_13

    .line 297
    .line 298
    const-wide p0, 0x4055400000000000L    # 85.0

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    goto :goto_b

    .line 304
    :cond_13
    const-wide/high16 p0, 0x4039000000000000L    # 25.0

    .line 305
    .line 306
    :goto_b
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    goto :goto_c

    .line 311
    :cond_14
    if-eqz p0, :cond_15

    .line 312
    .line 313
    move-wide v4, v8

    .line 314
    :cond_15
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    :goto_c
    return-object p0

    .line 319
    :pswitch_18
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 320
    .line 321
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 322
    .line 323
    return-object p0

    .line 324
    :pswitch_19
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 325
    .line 326
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 327
    .line 328
    iget-object p0, p0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 329
    .line 330
    iget-wide p0, p0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 331
    .line 332
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    return-object p0

    .line 337
    :pswitch_1a
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 338
    .line 339
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_1b
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 343
    .line 344
    iget-boolean p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 345
    .line 346
    if-eqz p0, :cond_16

    .line 347
    .line 348
    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    .line 349
    .line 350
    goto :goto_d

    .line 351
    :cond_16
    const-wide p0, 0x4058800000000000L    # 98.0

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    :goto_d
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    return-object p0

    .line 361
    :pswitch_1c
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 362
    .line 363
    iget-object p0, p1, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 364
    .line 365
    return-object p0

    .line 366
    :goto_e
    check-cast p1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 367
    .line 368
    const-wide/16 p0, 0x0

    .line 369
    .line 370
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    return-object p0

    .line 375
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
