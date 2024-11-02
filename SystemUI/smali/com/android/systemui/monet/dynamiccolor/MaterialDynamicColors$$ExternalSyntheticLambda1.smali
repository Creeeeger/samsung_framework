.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    const-wide v10, 0x4056800000000000L    # 90.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 19
    .line 20
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_c

    .line 26
    .line 27
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 42
    .line 43
    move-object/from16 v1, p1

    .line 44
    .line 45
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 53
    .line 54
    move-object/from16 v1, p1

    .line 55
    .line 56
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    iget-boolean v0, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-wide v10, v12

    .line 73
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Double;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    invoke-static {v0, v1, v14, v15}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    return-object v0

    .line 103
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 104
    .line 105
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0

    .line 128
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 129
    .line 130
    move-object/from16 v1, p1

    .line 131
    .line 132
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0

    .line 142
    :pswitch_6
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 143
    .line 144
    move-object/from16 v1, p1

    .line 145
    .line 146
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 157
    .line 158
    move-object/from16 v1, p1

    .line 159
    .line 160
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0

    .line 167
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 168
    .line 169
    move-object/from16 v1, p1

    .line 170
    .line 171
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :pswitch_9
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 182
    .line 183
    move-object/from16 v1, p1

    .line 184
    .line 185
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :pswitch_a
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 196
    .line 197
    move-object/from16 v1, p1

    .line 198
    .line 199
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 207
    .line 208
    move-object/from16 v1, p1

    .line 209
    .line 210
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object v2, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 216
    .line 217
    sget-object v3, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 218
    .line 219
    if-ne v2, v3, :cond_2

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_2
    move v8, v9

    .line 223
    :goto_2
    iget-boolean v2, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 224
    .line 225
    if-eqz v8, :cond_4

    .line 226
    .line 227
    if-eqz v2, :cond_3

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_3
    move-wide v4, v6

    .line 231
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    goto :goto_5

    .line 236
    :cond_4
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-nez v3, :cond_6

    .line 241
    .line 242
    if-eqz v2, :cond_5

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_5
    move-wide v10, v12

    .line 246
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    goto :goto_5

    .line 251
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 256
    .line 257
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, Ljava/lang/Double;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 264
    .line 265
    .line 266
    move-result-wide v0

    .line 267
    invoke-static {v0, v1, v14, v15}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    :goto_5
    return-object v0

    .line 276
    :pswitch_c
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 277
    .line 278
    move-object/from16 v1, p1

    .line 279
    .line 280
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    return-object v0

    .line 287
    :pswitch_d
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 288
    .line 289
    move-object/from16 v1, p1

    .line 290
    .line 291
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 292
    .line 293
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-boolean v1, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 300
    .line 301
    if-eqz v1, :cond_7

    .line 302
    .line 303
    sget-object v1, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->DARKER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_7
    sget-object v1, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 307
    .line 308
    :goto_6
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;-><init>(DLcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V

    .line 309
    .line 310
    .line 311
    return-object v4

    .line 312
    :pswitch_e
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 313
    .line 314
    move-object/from16 v1, p1

    .line 315
    .line 316
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    return-object v0

    .line 326
    :pswitch_f
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 327
    .line 328
    move-object/from16 v1, p1

    .line 329
    .line 330
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 331
    .line 332
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    iget-boolean v1, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 339
    .line 340
    if-eqz v1, :cond_8

    .line 341
    .line 342
    sget-object v1, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->DARKER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_8
    sget-object v1, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 346
    .line 347
    :goto_7
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;-><init>(DLcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V

    .line 348
    .line 349
    .line 350
    return-object v4

    .line 351
    :pswitch_10
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 352
    .line 353
    move-object/from16 v1, p1

    .line 354
    .line 355
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    return-object v0

    .line 365
    :pswitch_11
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 366
    .line 367
    move-object/from16 v1, p1

    .line 368
    .line 369
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    return-object v0

    .line 379
    :pswitch_12
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 380
    .line 381
    move-object/from16 v1, p1

    .line 382
    .line 383
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->error()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    return-object v0

    .line 390
    :pswitch_13
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 391
    .line 392
    move-object/from16 v1, p1

    .line 393
    .line 394
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    return-object v0

    .line 401
    :pswitch_14
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 402
    .line 403
    move-object/from16 v1, p1

    .line 404
    .line 405
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 406
    .line 407
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    return-object v0

    .line 412
    :pswitch_15
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 413
    .line 414
    move-object/from16 v1, p1

    .line 415
    .line 416
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    return-object v0

    .line 426
    :pswitch_16
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 427
    .line 428
    move-object/from16 v1, p1

    .line 429
    .line 430
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    return-object v0

    .line 437
    :pswitch_17
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 447
    .line 448
    invoke-direct {v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 449
    .line 450
    .line 451
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 452
    .line 453
    invoke-direct {v1, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 454
    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    invoke-static {v0, v1, v2, v2}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    return-object v0

    .line 462
    :pswitch_18
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 463
    .line 464
    move-object/from16 v1, p1

    .line 465
    .line 466
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    return-object v0

    .line 476
    :pswitch_19
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 477
    .line 478
    move-object/from16 v1, p1

    .line 479
    .line 480
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    return-object v0

    .line 487
    :pswitch_1a
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 488
    .line 489
    move-object/from16 v1, p1

    .line 490
    .line 491
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    if-eqz v2, :cond_9

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 507
    .line 508
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, Ljava/lang/Double;

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 515
    .line 516
    .line 517
    move-result-wide v0

    .line 518
    invoke-static {v0, v1, v14, v15}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 519
    .line 520
    .line 521
    move-result-wide v0

    .line 522
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    goto :goto_b

    .line 527
    :cond_9
    iget-object v0, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 528
    .line 529
    sget-object v2, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 530
    .line 531
    if-ne v0, v2, :cond_a

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :cond_a
    move v8, v9

    .line 535
    :goto_8
    iget-boolean v0, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 536
    .line 537
    if-eqz v8, :cond_c

    .line 538
    .line 539
    if-eqz v0, :cond_b

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_b
    move-wide v4, v6

    .line 543
    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    goto :goto_b

    .line 548
    :cond_c
    if-eqz v0, :cond_d

    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_d
    move-wide v10, v12

    .line 552
    :goto_a
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    :goto_b
    return-object v0

    .line 557
    :pswitch_1b
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 558
    .line 559
    move-object/from16 v1, p1

    .line 560
    .line 561
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 562
    .line 563
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    return-object v0

    .line 568
    :pswitch_1c
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 569
    .line 570
    move-object/from16 v1, p1

    .line 571
    .line 572
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    return-object v0

    .line 582
    :goto_c
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 583
    .line 584
    move-object/from16 v1, p1

    .line 585
    .line 586
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 587
    .line 588
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    return-object v0

    .line 593
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
