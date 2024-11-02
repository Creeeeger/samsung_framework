.class public final Lcom/android/systemui/theme/DynamicColors;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ALL_DYNAMIC_COLORS_MAPPED:Ljava/util/List;

.field public static final FIXED_COLORS_MAPPED:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 70

    .line 1
    new-instance v0, Lcom/android/systemui/theme/DynamicColors$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/theme/DynamicColors$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "primary_container"

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    invoke-direct {v5, v0, v6}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v15, 0x3

    .line 39
    invoke-direct {v7, v0, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v5, v7, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string/jumbo v5, "on_primary_container"

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string/jumbo v7, "primary"

    .line 58
    .line 59
    .line 60
    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v7, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    const/16 v8, 0x18

    .line 67
    .line 68
    invoke-direct {v7, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 72
    .line 73
    const/16 v9, 0x19

    .line 74
    .line 75
    invoke-direct {v8, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v10, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    const/16 v14, 0x15

    .line 81
    .line 82
    invoke-direct {v10, v0, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {v7, v8, v10, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const-string/jumbo v8, "on_primary"

    .line 90
    .line 91
    .line 92
    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string/jumbo v10, "secondary_container"

    .line 101
    .line 102
    .line 103
    invoke-static {v10, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    new-instance v10, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    invoke-direct {v10, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    const/16 v13, 0x1a

    .line 115
    .line 116
    invoke-direct {v11, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 117
    .line 118
    .line 119
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 120
    .line 121
    const/16 v15, 0x1b

    .line 122
    .line 123
    invoke-direct {v12, v0, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v10, v11, v12, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    const-string/jumbo v11, "on_secondary_container"

    .line 131
    .line 132
    .line 133
    invoke-static {v11, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const-string/jumbo v12, "secondary"

    .line 142
    .line 143
    .line 144
    invoke-static {v12, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 149
    .line 150
    const/16 v3, 0x8

    .line 151
    .line 152
    invoke-direct {v12, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 153
    .line 154
    .line 155
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 156
    .line 157
    const/16 v15, 0x9

    .line 158
    .line 159
    invoke-direct {v6, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 160
    .line 161
    .line 162
    new-instance v15, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 163
    .line 164
    invoke-direct {v15, v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v12, v6, v15, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    const-string/jumbo v12, "on_secondary"

    .line 172
    .line 173
    .line 174
    invoke-static {v12, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const-string/jumbo v15, "tertiary_container"

    .line 183
    .line 184
    .line 185
    invoke-static {v15, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 190
    .line 191
    const/16 v14, 0xb

    .line 192
    .line 193
    invoke-direct {v6, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 194
    .line 195
    .line 196
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 197
    .line 198
    const/16 v13, 0x11

    .line 199
    .line 200
    invoke-direct {v3, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 201
    .line 202
    .line 203
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 204
    .line 205
    const/16 v14, 0x12

    .line 206
    .line 207
    invoke-direct {v9, v0, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v6, v3, v9, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const-string/jumbo v6, "on_tertiary_container"

    .line 215
    .line 216
    .line 217
    invoke-static {v6, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const-string/jumbo v9, "tertiary"

    .line 226
    .line 227
    .line 228
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 229
    .line 230
    .line 231
    move-result-object v24

    .line 232
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 233
    .line 234
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 235
    .line 236
    .line 237
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    invoke-direct {v9, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 240
    .line 241
    .line 242
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 243
    .line 244
    const/4 v14, 0x6

    .line 245
    invoke-direct {v13, v0, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {v6, v9, v13, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const-string/jumbo v9, "on_tertiary"

    .line 253
    .line 254
    .line 255
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 256
    .line 257
    .line 258
    move-result-object v25

    .line 259
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 260
    .line 261
    const/4 v9, 0x0

    .line 262
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 263
    .line 264
    .line 265
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 266
    .line 267
    const/4 v14, 0x1

    .line 268
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    const-string v13, "background"

    .line 276
    .line 277
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 278
    .line 279
    .line 280
    move-result-object v48

    .line 281
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 282
    .line 283
    const/16 v13, 0xf

    .line 284
    .line 285
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 286
    .line 287
    .line 288
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/16 v9, 0x10

    .line 291
    .line 292
    invoke-direct {v13, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 293
    .line 294
    .line 295
    new-instance v14, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 296
    .line 297
    const/4 v9, 0x5

    .line 298
    invoke-direct {v14, v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v6, v13, v14, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    const-string/jumbo v13, "on_background"

    .line 306
    .line 307
    .line 308
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 309
    .line 310
    .line 311
    move-result-object v49

    .line 312
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 313
    .line 314
    const/16 v13, 0x10

    .line 315
    .line 316
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 317
    .line 318
    .line 319
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 320
    .line 321
    const/16 v14, 0x11

    .line 322
    .line 323
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 324
    .line 325
    .line 326
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    const-string/jumbo v13, "surface"

    .line 331
    .line 332
    .line 333
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 334
    .line 335
    .line 336
    move-result-object v50

    .line 337
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 338
    .line 339
    const/16 v13, 0x12

    .line 340
    .line 341
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 342
    .line 343
    .line 344
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 345
    .line 346
    const/16 v14, 0x13

    .line 347
    .line 348
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 349
    .line 350
    .line 351
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 352
    .line 353
    invoke-direct {v9, v0, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 354
    .line 355
    .line 356
    invoke-static {v6, v13, v9, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    const-string/jumbo v9, "on_surface"

    .line 361
    .line 362
    .line 363
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 364
    .line 365
    .line 366
    move-result-object v51

    .line 367
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 368
    .line 369
    const/16 v9, 0xd

    .line 370
    .line 371
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 372
    .line 373
    .line 374
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 375
    .line 376
    const/16 v14, 0xe

    .line 377
    .line 378
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 379
    .line 380
    .line 381
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    const-string/jumbo v13, "surface_container_low"

    .line 386
    .line 387
    .line 388
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 389
    .line 390
    .line 391
    move-result-object v52

    .line 392
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 393
    .line 394
    const/16 v13, 0x1c

    .line 395
    .line 396
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 397
    .line 398
    .line 399
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 400
    .line 401
    const/16 v14, 0x1d

    .line 402
    .line 403
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 404
    .line 405
    .line 406
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    const-string/jumbo v13, "surface_container_lowest"

    .line 411
    .line 412
    .line 413
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 414
    .line 415
    .line 416
    move-result-object v53

    .line 417
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 418
    .line 419
    const/16 v13, 0xc

    .line 420
    .line 421
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 422
    .line 423
    .line 424
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 425
    .line 426
    invoke-direct {v13, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 427
    .line 428
    .line 429
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    const-string/jumbo v13, "surface_container"

    .line 434
    .line 435
    .line 436
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 437
    .line 438
    .line 439
    move-result-object v54

    .line 440
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 441
    .line 442
    const/16 v13, 0xb

    .line 443
    .line 444
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 445
    .line 446
    .line 447
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 448
    .line 449
    const/16 v14, 0xc

    .line 450
    .line 451
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 452
    .line 453
    .line 454
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    const-string/jumbo v13, "surface_container_high"

    .line 459
    .line 460
    .line 461
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 462
    .line 463
    .line 464
    move-result-object v55

    .line 465
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 466
    .line 467
    const/16 v13, 0x19

    .line 468
    .line 469
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 470
    .line 471
    .line 472
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 473
    .line 474
    const/16 v14, 0x1a

    .line 475
    .line 476
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 477
    .line 478
    .line 479
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    const-string/jumbo v13, "surface_container_highest"

    .line 484
    .line 485
    .line 486
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 487
    .line 488
    .line 489
    move-result-object v56

    .line 490
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 491
    .line 492
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 493
    .line 494
    .line 495
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 496
    .line 497
    const/16 v14, 0xe

    .line 498
    .line 499
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 500
    .line 501
    .line 502
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    const-string/jumbo v13, "surface_bright"

    .line 507
    .line 508
    .line 509
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 510
    .line 511
    .line 512
    move-result-object v57

    .line 513
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 514
    .line 515
    const/4 v13, 0x7

    .line 516
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 517
    .line 518
    .line 519
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 520
    .line 521
    const/16 v14, 0x8

    .line 522
    .line 523
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 524
    .line 525
    .line 526
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    const-string/jumbo v13, "surface_dim"

    .line 531
    .line 532
    .line 533
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 534
    .line 535
    .line 536
    move-result-object v58

    .line 537
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 538
    .line 539
    const/16 v14, 0x15

    .line 540
    .line 541
    invoke-direct {v6, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 542
    .line 543
    .line 544
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 545
    .line 546
    const/16 v9, 0x16

    .line 547
    .line 548
    invoke-direct {v13, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 549
    .line 550
    .line 551
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    const-string/jumbo v13, "surface_variant"

    .line 556
    .line 557
    .line 558
    invoke-static {v13, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 559
    .line 560
    .line 561
    move-result-object v27

    .line 562
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 563
    .line 564
    const/16 v13, 0x1b

    .line 565
    .line 566
    invoke-direct {v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 567
    .line 568
    .line 569
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 570
    .line 571
    const/16 v14, 0x1c

    .line 572
    .line 573
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 574
    .line 575
    .line 576
    new-instance v14, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 577
    .line 578
    const/4 v9, 0x2

    .line 579
    invoke-direct {v14, v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 580
    .line 581
    .line 582
    invoke-static {v6, v13, v14, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    const-string/jumbo v9, "on_surface_variant"

    .line 587
    .line 588
    .line 589
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 590
    .line 591
    .line 592
    move-result-object v28

    .line 593
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 594
    .line 595
    const/16 v9, 0x13

    .line 596
    .line 597
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 598
    .line 599
    .line 600
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 601
    .line 602
    const/16 v13, 0x14

    .line 603
    .line 604
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 605
    .line 606
    .line 607
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 608
    .line 609
    const/4 v14, 0x7

    .line 610
    invoke-direct {v13, v0, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 611
    .line 612
    .line 613
    invoke-static {v6, v9, v13, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    const-string/jumbo v9, "outline"

    .line 618
    .line 619
    .line 620
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 621
    .line 622
    .line 623
    move-result-object v29

    .line 624
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    const-string/jumbo v9, "outline_variant"

    .line 629
    .line 630
    .line 631
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 632
    .line 633
    .line 634
    move-result-object v30

    .line 635
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->error()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    const-string v9, "error"

    .line 640
    .line 641
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 642
    .line 643
    .line 644
    move-result-object v31

    .line 645
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 646
    .line 647
    const/16 v9, 0x19

    .line 648
    .line 649
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 650
    .line 651
    .line 652
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 653
    .line 654
    const/16 v13, 0x1a

    .line 655
    .line 656
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 657
    .line 658
    .line 659
    new-instance v14, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 660
    .line 661
    const/16 v13, 0xa

    .line 662
    .line 663
    invoke-direct {v14, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 664
    .line 665
    .line 666
    invoke-static {v6, v9, v14, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 667
    .line 668
    .line 669
    move-result-object v6

    .line 670
    const-string/jumbo v9, "on_error"

    .line 671
    .line 672
    .line 673
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 674
    .line 675
    .line 676
    move-result-object v32

    .line 677
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 678
    .line 679
    .line 680
    move-result-object v6

    .line 681
    const-string v9, "error_container"

    .line 682
    .line 683
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 684
    .line 685
    .line 686
    move-result-object v33

    .line 687
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 688
    .line 689
    const/16 v14, 0x13

    .line 690
    .line 691
    invoke-direct {v6, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 692
    .line 693
    .line 694
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 695
    .line 696
    const/16 v13, 0x14

    .line 697
    .line 698
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 699
    .line 700
    .line 701
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 702
    .line 703
    const/16 v14, 0x9

    .line 704
    .line 705
    invoke-direct {v13, v0, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 706
    .line 707
    .line 708
    invoke-static {v6, v9, v13, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    const-string/jumbo v9, "on_error_container"

    .line 713
    .line 714
    .line 715
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 716
    .line 717
    .line 718
    move-result-object v34

    .line 719
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 720
    .line 721
    const/16 v9, 0x16

    .line 722
    .line 723
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 724
    .line 725
    .line 726
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 727
    .line 728
    const/16 v9, 0x17

    .line 729
    .line 730
    invoke-direct {v13, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 731
    .line 732
    .line 733
    invoke-static {v6, v13, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    const-string v9, "control_activated"

    .line 738
    .line 739
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 740
    .line 741
    .line 742
    move-result-object v35

    .line 743
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 744
    .line 745
    const/4 v9, 0x1

    .line 746
    invoke-direct {v6, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 747
    .line 748
    .line 749
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 750
    .line 751
    const/4 v13, 0x2

    .line 752
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 753
    .line 754
    .line 755
    invoke-static {v6, v9, v1, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    const-string v9, "control_normal"

    .line 760
    .line 761
    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 762
    .line 763
    .line 764
    move-result-object v36

    .line 765
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 766
    .line 767
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 768
    .line 769
    const/16 v13, 0x1d

    .line 770
    .line 771
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 772
    .line 773
    .line 774
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 775
    .line 776
    const/4 v14, 0x0

    .line 777
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 778
    .line 779
    .line 780
    new-instance v14, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 781
    .line 782
    const/4 v1, 0x1

    .line 783
    invoke-direct {v14, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 784
    .line 785
    .line 786
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 787
    .line 788
    move-object/from16 v68, v0

    .line 789
    .line 790
    const/4 v0, 0x2

    .line 791
    invoke-direct {v1, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 792
    .line 793
    .line 794
    const/16 v64, 0x0

    .line 795
    .line 796
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 797
    .line 798
    move-object/from16 v22, v3

    .line 799
    .line 800
    const/4 v3, 0x3

    .line 801
    invoke-direct {v0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 802
    .line 803
    .line 804
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 805
    .line 806
    move-object/from16 v69, v15

    .line 807
    .line 808
    const/4 v15, 0x4

    .line 809
    invoke-direct {v3, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 810
    .line 811
    .line 812
    const/16 v67, 0x0

    .line 813
    .line 814
    move-object/from16 v59, v6

    .line 815
    .line 816
    move-object/from16 v60, v9

    .line 817
    .line 818
    move-object/from16 v61, v13

    .line 819
    .line 820
    move-object/from16 v62, v14

    .line 821
    .line 822
    move-object/from16 v63, v1

    .line 823
    .line 824
    move-object/from16 v65, v0

    .line 825
    .line 826
    move-object/from16 v66, v3

    .line 827
    .line 828
    invoke-direct/range {v59 .. v67}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 829
    .line 830
    .line 831
    const-string v0, "control_highlight"

    .line 832
    .line 833
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 834
    .line 835
    .line 836
    move-result-object v37

    .line 837
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 838
    .line 839
    const/4 v1, 0x0

    .line 840
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 841
    .line 842
    .line 843
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 844
    .line 845
    const/4 v3, 0x1

    .line 846
    invoke-direct {v1, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 847
    .line 848
    .line 849
    const/4 v6, 0x0

    .line 850
    invoke-static {v0, v1, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    const-string/jumbo v1, "text_primary_inverse"

    .line 855
    .line 856
    .line 857
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 858
    .line 859
    .line 860
    move-result-object v38

    .line 861
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 862
    .line 863
    const/4 v1, 0x2

    .line 864
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 865
    .line 866
    .line 867
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 868
    .line 869
    const/4 v9, 0x3

    .line 870
    invoke-direct {v1, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 871
    .line 872
    .line 873
    invoke-static {v0, v1, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    const-string/jumbo v1, "text_secondary_and_tertiary_inverse"

    .line 878
    .line 879
    .line 880
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 881
    .line 882
    .line 883
    move-result-object v39

    .line 884
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 885
    .line 886
    const/16 v1, 0x1b

    .line 887
    .line 888
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 889
    .line 890
    .line 891
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 892
    .line 893
    const/16 v13, 0x1c

    .line 894
    .line 895
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 896
    .line 897
    .line 898
    invoke-static {v0, v9, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    const-string/jumbo v9, "text_primary_inverse_disable_only"

    .line 903
    .line 904
    .line 905
    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 906
    .line 907
    .line 908
    move-result-object v40

    .line 909
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 910
    .line 911
    const/4 v9, 0x5

    .line 912
    invoke-direct {v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 913
    .line 914
    .line 915
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 916
    .line 917
    const/4 v14, 0x6

    .line 918
    invoke-direct {v9, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 919
    .line 920
    .line 921
    invoke-static {v0, v9, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    const-string/jumbo v9, "text_secondary_and_tertiary_inverse_disabled"

    .line 926
    .line 927
    .line 928
    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 929
    .line 930
    .line 931
    move-result-object v41

    .line 932
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 933
    .line 934
    const/16 v9, 0xf

    .line 935
    .line 936
    invoke-direct {v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 937
    .line 938
    .line 939
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 940
    .line 941
    const/16 v13, 0x10

    .line 942
    .line 943
    invoke-direct {v9, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 944
    .line 945
    .line 946
    invoke-static {v0, v9, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    const-string/jumbo v9, "text_hint_inverse"

    .line 951
    .line 952
    .line 953
    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 954
    .line 955
    .line 956
    move-result-object v42

    .line 957
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 958
    .line 959
    const/4 v9, 0x2

    .line 960
    invoke-direct {v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 961
    .line 962
    .line 963
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 964
    .line 965
    const/4 v15, 0x3

    .line 966
    invoke-direct {v9, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 967
    .line 968
    .line 969
    invoke-static {v0, v9, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    const-string/jumbo v9, "palette_key_color_primary"

    .line 974
    .line 975
    .line 976
    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 977
    .line 978
    .line 979
    move-result-object v43

    .line 980
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 981
    .line 982
    const/4 v9, 0x4

    .line 983
    invoke-direct {v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 984
    .line 985
    .line 986
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 987
    .line 988
    const/4 v1, 0x5

    .line 989
    invoke-direct {v9, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 990
    .line 991
    .line 992
    invoke-static {v0, v9, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    const-string/jumbo v1, "palette_key_color_secondary"

    .line 997
    .line 998
    .line 999
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v44

    .line 1003
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1004
    .line 1005
    const/16 v1, 0xd

    .line 1006
    .line 1007
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1008
    .line 1009
    .line 1010
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1011
    .line 1012
    const/16 v9, 0xe

    .line 1013
    .line 1014
    invoke-direct {v1, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1015
    .line 1016
    .line 1017
    invoke-static {v0, v1, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    const-string/jumbo v1, "palette_key_color_tertiary"

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v45

    .line 1028
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1029
    .line 1030
    invoke-direct {v0, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1031
    .line 1032
    .line 1033
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1034
    .line 1035
    const/16 v9, 0xf

    .line 1036
    .line 1037
    invoke-direct {v1, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1038
    .line 1039
    .line 1040
    invoke-static {v0, v1, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    const-string/jumbo v1, "palette_key_color_neutral"

    .line 1045
    .line 1046
    .line 1047
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v46

    .line 1051
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1052
    .line 1053
    const/16 v1, 0x1d

    .line 1054
    .line 1055
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1059
    .line 1060
    const/4 v3, 0x0

    .line 1061
    invoke-direct {v1, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v0, v1, v6, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    const-string/jumbo v1, "palette_key_color_neutral_variant"

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v47

    .line 1075
    move-object v6, v2

    .line 1076
    move v1, v9

    .line 1077
    move v2, v13

    .line 1078
    const/16 v0, 0x16

    .line 1079
    .line 1080
    move-object v9, v10

    .line 1081
    move-object v10, v11

    .line 1082
    move-object v11, v12

    .line 1083
    move-object/from16 v12, v69

    .line 1084
    .line 1085
    const/16 v3, 0x1a

    .line 1086
    .line 1087
    const/16 v16, 0xb

    .line 1088
    .line 1089
    move-object/from16 v13, v22

    .line 1090
    .line 1091
    move v0, v14

    .line 1092
    const/4 v3, 0x1

    .line 1093
    const/16 v16, 0x9

    .line 1094
    .line 1095
    move-object/from16 v14, v24

    .line 1096
    .line 1097
    move-object/from16 v15, v25

    .line 1098
    .line 1099
    move-object/from16 v16, v48

    .line 1100
    .line 1101
    move-object/from16 v17, v49

    .line 1102
    .line 1103
    move-object/from16 v18, v50

    .line 1104
    .line 1105
    move-object/from16 v19, v51

    .line 1106
    .line 1107
    move-object/from16 v20, v52

    .line 1108
    .line 1109
    move-object/from16 v21, v53

    .line 1110
    .line 1111
    move-object/from16 v22, v54

    .line 1112
    .line 1113
    move-object/from16 v23, v55

    .line 1114
    .line 1115
    move-object/from16 v24, v56

    .line 1116
    .line 1117
    move-object/from16 v25, v57

    .line 1118
    .line 1119
    move-object/from16 v26, v58

    .line 1120
    .line 1121
    filled-new-array/range {v4 .. v47}, [Landroid/util/Pair;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    sput-object v4, Lcom/android/systemui/theme/DynamicColors;->ALL_DYNAMIC_COLORS_MAPPED:Ljava/util/List;

    .line 1130
    .line 1131
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 1132
    .line 1133
    invoke-direct {v4, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1134
    .line 1135
    .line 1136
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 1137
    .line 1138
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1139
    .line 1140
    .line 1141
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 1142
    .line 1143
    move-object/from16 v6, v68

    .line 1144
    .line 1145
    invoke-direct {v5, v6, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1146
    .line 1147
    .line 1148
    const/4 v0, 0x0

    .line 1149
    invoke-static {v4, v1, v5, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v1

    .line 1153
    const-string/jumbo v0, "primary_fixed"

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v7

    .line 1160
    invoke-virtual {v6}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    const-string/jumbo v1, "primary_fixed_dim"

    .line 1165
    .line 1166
    .line 1167
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v8

    .line 1171
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1172
    .line 1173
    const/16 v1, 0x17

    .line 1174
    .line 1175
    invoke-direct {v0, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1176
    .line 1177
    .line 1178
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1179
    .line 1180
    const/16 v4, 0x18

    .line 1181
    .line 1182
    invoke-direct {v1, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1183
    .line 1184
    .line 1185
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 1186
    .line 1187
    invoke-direct {v5, v6, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1188
    .line 1189
    .line 1190
    const/4 v9, 0x0

    .line 1191
    invoke-static {v0, v1, v5, v9}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    const-string/jumbo v1, "on_primary_fixed"

    .line 1196
    .line 1197
    .line 1198
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1203
    .line 1204
    const/16 v5, 0x8

    .line 1205
    .line 1206
    invoke-direct {v1, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1207
    .line 1208
    .line 1209
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1210
    .line 1211
    const/16 v10, 0x9

    .line 1212
    .line 1213
    invoke-direct {v5, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1214
    .line 1215
    .line 1216
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1217
    .line 1218
    invoke-direct {v11, v6, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v1, v5, v11, v9}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    const-string/jumbo v3, "on_primary_fixed_variant"

    .line 1226
    .line 1227
    .line 1228
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1233
    .line 1234
    const/4 v5, 0x3

    .line 1235
    invoke-direct {v3, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1239
    .line 1240
    const/4 v11, 0x4

    .line 1241
    invoke-direct {v5, v11}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1242
    .line 1243
    .line 1244
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1245
    .line 1246
    const/16 v12, 0xb

    .line 1247
    .line 1248
    invoke-direct {v11, v6, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1249
    .line 1250
    .line 1251
    invoke-static {v3, v5, v11, v9}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    const-string/jumbo v5, "secondary_fixed"

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v11

    .line 1262
    invoke-virtual {v6}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    const-string/jumbo v5, "secondary_fixed_dim"

    .line 1267
    .line 1268
    .line 1269
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v12

    .line 1273
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1274
    .line 1275
    const/16 v5, 0x15

    .line 1276
    .line 1277
    invoke-direct {v3, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1281
    .line 1282
    const/16 v9, 0x16

    .line 1283
    .line 1284
    invoke-direct {v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1285
    .line 1286
    .line 1287
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1288
    .line 1289
    const/16 v13, 0x8

    .line 1290
    .line 1291
    invoke-direct {v9, v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1292
    .line 1293
    .line 1294
    const/4 v13, 0x0

    .line 1295
    invoke-static {v3, v5, v9, v13}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v3

    .line 1299
    const-string/jumbo v5, "on_secondary_fixed"

    .line 1300
    .line 1301
    .line 1302
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v3

    .line 1306
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1307
    .line 1308
    const/16 v9, 0x17

    .line 1309
    .line 1310
    invoke-direct {v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1311
    .line 1312
    .line 1313
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;

    .line 1314
    .line 1315
    invoke-direct {v9, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1316
    .line 1317
    .line 1318
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1319
    .line 1320
    invoke-direct {v4, v6, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1321
    .line 1322
    .line 1323
    invoke-static {v5, v9, v4, v13}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v4

    .line 1327
    const-string/jumbo v5, "on_secondary_fixed_variant"

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v14

    .line 1334
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1335
    .line 1336
    const/16 v5, 0x1a

    .line 1337
    .line 1338
    invoke-direct {v4, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1342
    .line 1343
    const/16 v9, 0x1b

    .line 1344
    .line 1345
    invoke-direct {v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1346
    .line 1347
    .line 1348
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1349
    .line 1350
    const/16 v15, 0x16

    .line 1351
    .line 1352
    invoke-direct {v9, v6, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1353
    .line 1354
    .line 1355
    invoke-static {v4, v5, v9, v13}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v4

    .line 1359
    const-string/jumbo v5, "tertiary_fixed"

    .line 1360
    .line 1361
    .line 1362
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v15

    .line 1366
    invoke-virtual {v6}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v4

    .line 1370
    const-string/jumbo v5, "tertiary_fixed_dim"

    .line 1371
    .line 1372
    .line 1373
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v16

    .line 1377
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1378
    .line 1379
    const/16 v5, 0x13

    .line 1380
    .line 1381
    invoke-direct {v4, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1382
    .line 1383
    .line 1384
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1385
    .line 1386
    const/16 v9, 0x14

    .line 1387
    .line 1388
    invoke-direct {v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1389
    .line 1390
    .line 1391
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1392
    .line 1393
    const/16 v13, 0x1d

    .line 1394
    .line 1395
    invoke-direct {v9, v6, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1396
    .line 1397
    .line 1398
    const/4 v13, 0x0

    .line 1399
    invoke-static {v4, v5, v9, v13}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v4

    .line 1403
    const-string/jumbo v5, "on_tertiary_fixed"

    .line 1404
    .line 1405
    .line 1406
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v17

    .line 1410
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1411
    .line 1412
    invoke-direct {v4, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1413
    .line 1414
    .line 1415
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1416
    .line 1417
    const/16 v9, 0xa

    .line 1418
    .line 1419
    invoke-direct {v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1420
    .line 1421
    .line 1422
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1423
    .line 1424
    invoke-direct {v9, v6, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1425
    .line 1426
    .line 1427
    invoke-static {v4, v5, v9, v13}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    const-string/jumbo v4, "on_tertiary_fixed_variant"

    .line 1432
    .line 1433
    .line 1434
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v18

    .line 1438
    move-object v9, v0

    .line 1439
    move-object v10, v1

    .line 1440
    move-object v13, v3

    .line 1441
    filled-new-array/range {v7 .. v18}, [Landroid/util/Pair;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v0

    .line 1445
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    sput-object v0, Lcom/android/systemui/theme/DynamicColors;->FIXED_COLORS_MAPPED:Ljava/util/List;

    .line 1450
    .line 1451
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
