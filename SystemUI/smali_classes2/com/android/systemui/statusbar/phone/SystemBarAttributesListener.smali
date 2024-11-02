.class public final Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

.field public lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

.field public final letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

.field public final lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final systemStatusAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->systemStatusAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 13
    .line 14
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string p1, "SystemBarAttributesListener"

    .line 18
    .line 19
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "lastSystemBarAttributesParams: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "lastLetterboxAppearance: "

    .line 25
    .line 26
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p3

    .line 4
    .line 5
    move-object/from16 v11, p8

    .line 6
    .line 7
    new-instance v12, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 8
    .line 9
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static/range {p8 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    move-object v1, v12

    .line 18
    move/from16 v2, p1

    .line 19
    .line 20
    move/from16 v3, p2

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;-><init>(IILjava/util/List;ZIILjava/lang/String;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 34
    .line 35
    array-length v1, v11

    .line 36
    const/4 v2, 0x1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    xor-int/2addr v1, v2

    .line 43
    if-eqz v1, :cond_16

    .line 44
    .line 45
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    .line 50
    .line 51
    iput-object v1, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearance:Ljava/lang/Integer;

    .line 52
    .line 53
    iput-object v10, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 54
    .line 55
    iput-object v11, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxes:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 56
    .line 57
    iget-object v1, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 58
    .line 59
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->isLetterboxBackgroundMultiColored:Z

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_1
    array-length v4, v11

    .line 66
    const/4 v5, 0x0

    .line 67
    :goto_1
    if-ge v5, v4, :cond_b

    .line 68
    .line 69
    aget-object v6, v11, v5

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget-object v8, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->statusBarBoundsProvider:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 76
    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 80
    .line 81
    invoke-static {v8}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_4

    .line 96
    .line 97
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_3

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget v12, v8, Landroid/graphics/Rect;->top:I

    .line 107
    .line 108
    iget v13, v8, Landroid/graphics/Rect;->right:I

    .line 109
    .line 110
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 111
    .line 112
    invoke-virtual {v7, v9, v12, v13, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    :goto_3
    const/4 v7, 0x0

    .line 118
    :goto_4
    if-nez v7, :cond_9

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->statusBarBoundsProvider:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 125
    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 129
    .line 130
    invoke-static {v7}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    goto :goto_5

    .line 135
    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    .line 136
    .line 137
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .line 139
    .line 140
    :goto_5
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_7

    .line 145
    .line 146
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_6

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_6
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 154
    .line 155
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    iget v12, v7, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 160
    .line 161
    invoke-virtual {v6, v8, v9, v12, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    goto :goto_7

    .line 166
    :cond_7
    :goto_6
    const/4 v6, 0x0

    .line 167
    :goto_7
    if-eqz v6, :cond_8

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_8
    const/4 v6, 0x0

    .line 171
    goto :goto_9

    .line 172
    :cond_9
    :goto_8
    move v6, v2

    .line 173
    :goto_9
    if-eqz v6, :cond_a

    .line 174
    .line 175
    :goto_a
    move v4, v2

    .line 176
    goto :goto_b

    .line 177
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_b
    const/4 v4, 0x0

    .line 181
    :goto_b
    if-eqz v4, :cond_c

    .line 182
    .line 183
    new-instance v1, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 184
    .line 185
    or-int/lit8 v4, p2, 0x20

    .line 186
    .line 187
    invoke-direct {v1, v4, v10}, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;-><init>(I[Lcom/android/internal/view/AppearanceRegion;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_14

    .line 191
    .line 192
    :cond_c
    and-int/lit8 v4, p2, -0x21

    .line 193
    .line 194
    new-instance v5, Ljava/util/ArrayList;

    .line 195
    .line 196
    array-length v6, v10

    .line 197
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .line 199
    .line 200
    array-length v6, v10

    .line 201
    const/4 v7, 0x0

    .line 202
    :goto_c
    if-ge v7, v6, :cond_10

    .line 203
    .line 204
    aget-object v8, v10, v7

    .line 205
    .line 206
    array-length v9, v11

    .line 207
    const/4 v12, 0x0

    .line 208
    :goto_d
    if-ge v12, v9, :cond_e

    .line 209
    .line 210
    aget-object v13, v11, v12

    .line 211
    .line 212
    invoke-virtual {v13}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxFullBounds()Landroid/graphics/Rect;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-virtual {v8}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    if-eqz v14, :cond_d

    .line 225
    .line 226
    goto :goto_e

    .line 227
    :cond_d
    add-int/lit8 v12, v12, 0x1

    .line 228
    .line 229
    goto :goto_d

    .line 230
    :cond_e
    const/4 v13, 0x0

    .line 231
    :goto_e
    if-nez v13, :cond_f

    .line 232
    .line 233
    goto :goto_f

    .line 234
    :cond_f
    new-instance v9, Lcom/android/internal/view/AppearanceRegion;

    .line 235
    .line 236
    invoke-virtual {v8}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    invoke-virtual {v13}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-direct {v9, v8, v12}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 245
    .line 246
    .line 247
    move-object v8, v9

    .line 248
    :goto_f
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    add-int/lit8 v7, v7, 0x1

    .line 252
    .line 253
    goto :goto_c

    .line 254
    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    .line 255
    .line 256
    array-length v7, v11

    .line 257
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    array-length v7, v11

    .line 261
    const/4 v8, 0x0

    .line 262
    :goto_10
    if-ge v8, v7, :cond_15

    .line 263
    .line 264
    aget-object v2, v11, v8

    .line 265
    .line 266
    iget v9, v1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I

    .line 267
    .line 268
    iget-object v10, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 269
    .line 270
    iget v12, v10, Lcom/android/systemui/statusbar/phone/LightBarController;->mLightIconColor:I

    .line 271
    .line 272
    invoke-static {v12, v9}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    .line 273
    .line 274
    .line 275
    move-result-wide v12

    .line 276
    iget v10, v10, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkIconColor:I

    .line 277
    .line 278
    invoke-static {v10, v9}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    .line 279
    .line 280
    .line 281
    move-result-wide v9

    .line 282
    cmpl-double v9, v9, v12

    .line 283
    .line 284
    if-lez v9, :cond_11

    .line 285
    .line 286
    const/16 v9, 0x8

    .line 287
    .line 288
    goto :goto_11

    .line 289
    :cond_11
    const/4 v9, 0x0

    .line 290
    :goto_11
    invoke-virtual {v2}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v2}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxFullBounds()Landroid/graphics/Rect;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    new-instance v12, Landroid/graphics/Rect;

    .line 299
    .line 300
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 301
    .line 302
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 303
    .line 304
    iget v15, v2, Landroid/graphics/Rect;->right:I

    .line 305
    .line 306
    move-object/from16 p1, v1

    .line 307
    .line 308
    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 309
    .line 310
    invoke-direct {v12, v13, v14, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 311
    .line 312
    .line 313
    new-instance v1, Landroid/graphics/Rect;

    .line 314
    .line 315
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 316
    .line 317
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 318
    .line 319
    iget v15, v10, Landroid/graphics/Rect;->left:I

    .line 320
    .line 321
    move/from16 p2, v7

    .line 322
    .line 323
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 324
    .line 325
    invoke-direct {v1, v13, v14, v15, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 326
    .line 327
    .line 328
    new-instance v7, Landroid/graphics/Rect;

    .line 329
    .line 330
    iget v13, v10, Landroid/graphics/Rect;->right:I

    .line 331
    .line 332
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 333
    .line 334
    iget v15, v2, Landroid/graphics/Rect;->right:I

    .line 335
    .line 336
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 337
    .line 338
    invoke-direct {v7, v13, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    .line 340
    .line 341
    new-instance v11, Landroid/graphics/Rect;

    .line 342
    .line 343
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 344
    .line 345
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 346
    .line 347
    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 348
    .line 349
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 350
    .line 351
    invoke-direct {v11, v13, v10, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    .line 353
    .line 354
    filled-new-array {v1, v12, v7, v11}, [Landroid/graphics/Rect;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    if-eqz v7, :cond_13

    .line 376
    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    move-object v10, v7

    .line 382
    check-cast v10, Landroid/graphics/Rect;

    .line 383
    .line 384
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v10

    .line 388
    xor-int/lit8 v10, v10, 0x1

    .line 389
    .line 390
    if-eqz v10, :cond_12

    .line 391
    .line 392
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    goto :goto_12

    .line 396
    :cond_13
    const/4 v1, 0x1

    .line 397
    new-instance v7, Ljava/util/ArrayList;

    .line 398
    .line 399
    const/16 v10, 0xa

    .line 400
    .line 401
    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    if-eqz v10, :cond_14

    .line 417
    .line 418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    check-cast v10, Landroid/graphics/Rect;

    .line 423
    .line 424
    new-instance v11, Lcom/android/internal/view/AppearanceRegion;

    .line 425
    .line 426
    invoke-direct {v11, v9, v10}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    goto :goto_13

    .line 433
    :cond_14
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    add-int/lit8 v8, v8, 0x1

    .line 437
    .line 438
    move/from16 v7, p2

    .line 439
    .line 440
    move-object/from16 v11, p8

    .line 441
    .line 442
    move v2, v1

    .line 443
    move-object/from16 v1, p1

    .line 444
    .line 445
    goto/16 :goto_10

    .line 446
    .line 447
    :cond_15
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    new-instance v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 456
    .line 457
    const/4 v6, 0x0

    .line 458
    new-array v6, v6, [Lcom/android/internal/view/AppearanceRegion;

    .line 459
    .line 460
    check-cast v1, Ljava/util/ArrayList;

    .line 461
    .line 462
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    check-cast v1, [Lcom/android/internal/view/AppearanceRegion;

    .line 467
    .line 468
    invoke-direct {v5, v4, v1}, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;-><init>(I[Lcom/android/internal/view/AppearanceRegion;)V

    .line 469
    .line 470
    .line 471
    move-object v1, v5

    .line 472
    :goto_14
    iput-object v1, v3, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 473
    .line 474
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 475
    .line 476
    new-instance v3, Lkotlin/Pair;

    .line 477
    .line 478
    iget v4, v1, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    .line 479
    .line 480
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 485
    .line 486
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    goto :goto_15

    .line 490
    :cond_16
    const/4 v1, 0x0

    .line 491
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 492
    .line 493
    new-instance v3, Lkotlin/Pair;

    .line 494
    .line 495
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-direct {v3, v1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    :goto_15
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Ljava/lang/Number;

    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    move-object v5, v3

    .line 517
    check-cast v5, [Lcom/android/internal/view/AppearanceRegion;

    .line 518
    .line 519
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 520
    .line 521
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 522
    .line 523
    iget v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAppearance:I

    .line 524
    .line 525
    if-eq v4, v1, :cond_1c

    .line 526
    .line 527
    iput v1, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAppearance:I

    .line 528
    .line 529
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 530
    .line 531
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->barMode(IZ)I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    iget v6, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 536
    .line 537
    if-eq v6, v4, :cond_17

    .line 538
    .line 539
    iput v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 540
    .line 541
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes()V

    .line 542
    .line 543
    .line 544
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 545
    .line 546
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 547
    .line 548
    .line 549
    move v4, v2

    .line 550
    goto :goto_16

    .line 551
    :cond_17
    const/4 v4, 0x0

    .line 552
    :goto_16
    iget v6, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAppearance:I

    .line 553
    .line 554
    iget v7, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 555
    .line 556
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSamsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    .line 557
    .line 558
    iget-boolean v8, v3, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayAppearance:Z

    .line 559
    .line 560
    if-eqz v7, :cond_19

    .line 561
    .line 562
    const/4 v9, 0x6

    .line 563
    if-ne v7, v9, :cond_18

    .line 564
    .line 565
    goto :goto_17

    .line 566
    :cond_18
    const/4 v7, 0x0

    .line 567
    goto :goto_18

    .line 568
    :cond_19
    :goto_17
    move v7, v2

    .line 569
    :goto_18
    if-eqz v7, :cond_1a

    .line 570
    .line 571
    const v7, 0x8000

    .line 572
    .line 573
    .line 574
    and-int/2addr v6, v7

    .line 575
    if-eqz v6, :cond_1a

    .line 576
    .line 577
    move v6, v2

    .line 578
    goto :goto_19

    .line 579
    :cond_1a
    const/4 v6, 0x0

    .line 580
    :goto_19
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayAppearance:Z

    .line 581
    .line 582
    const-string v7, "isGrayAppearance="

    .line 583
    .line 584
    const-string v9, "SamsungStatusBarGrayIconHelper"

    .line 585
    .line 586
    invoke-static {v7, v6, v9}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 587
    .line 588
    .line 589
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->isGrayAppearance:Z

    .line 590
    .line 591
    if-eq v8, v6, :cond_1b

    .line 592
    .line 593
    move v6, v2

    .line 594
    goto :goto_1a

    .line 595
    :cond_1b
    const/4 v6, 0x0

    .line 596
    :goto_1a
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayAppearanceChanged:Z

    .line 597
    .line 598
    move v6, v4

    .line 599
    goto :goto_1b

    .line 600
    :cond_1c
    const/4 v3, 0x0

    .line 601
    move v6, v3

    .line 602
    :goto_1b
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 603
    .line 604
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 605
    .line 606
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 607
    .line 608
    iget v7, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 609
    .line 610
    move/from16 v8, p4

    .line 611
    .line 612
    move-object/from16 v9, p7

    .line 613
    .line 614
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZLjava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 618
    .line 619
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 620
    .line 621
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    new-instance v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 625
    .line 626
    const/4 v5, 0x0

    .line 627
    invoke-direct {v4, v3, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 628
    .line 629
    .line 630
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    .line 631
    .line 632
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 633
    .line 634
    .line 635
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 636
    .line 637
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 638
    .line 639
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    and-int v4, v4, p6

    .line 647
    .line 648
    if-eqz v4, :cond_1e

    .line 649
    .line 650
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    and-int v4, v4, p6

    .line 655
    .line 656
    if-nez v4, :cond_1d

    .line 657
    .line 658
    goto :goto_1c

    .line 659
    :cond_1d
    move v4, v5

    .line 660
    goto :goto_1d

    .line 661
    :cond_1e
    :goto_1c
    move v4, v2

    .line 662
    :goto_1d
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    .line 663
    .line 664
    if-eq v6, v4, :cond_20

    .line 665
    .line 666
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    .line 667
    .line 668
    iget-object v6, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 669
    .line 670
    monitor-enter v6

    .line 671
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    .line 672
    .line 673
    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 674
    .line 675
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 683
    .line 684
    .line 685
    move-result v7

    .line 686
    if-eqz v7, :cond_1f

    .line 687
    .line 688
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    check-cast v7, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    .line 693
    .line 694
    iget-object v7, v7, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 695
    .line 696
    invoke-interface {v7, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onFullscreenStateChanged(Z)V

    .line 697
    .line 698
    .line 699
    goto :goto_1e

    .line 700
    :cond_1f
    monitor-exit v6

    .line 701
    goto :goto_1f

    .line 702
    :catchall_0
    move-exception v0

    .line 703
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    throw v0

    .line 705
    :cond_20
    :goto_1f
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->DEBUG_IMMERSIVE_APPS:Z

    .line 706
    .line 707
    if-eqz v3, :cond_23

    .line 708
    .line 709
    and-int/lit8 v1, v1, 0x4

    .line 710
    .line 711
    if-eqz v1, :cond_21

    .line 712
    .line 713
    move v1, v2

    .line 714
    goto :goto_20

    .line 715
    :cond_21
    move v1, v5

    .line 716
    :goto_20
    const-class v3, Landroid/view/InsetsFlags;

    .line 717
    .line 718
    const-string v4, "behavior"

    .line 719
    .line 720
    move/from16 v6, p5

    .line 721
    .line 722
    invoke-static {v3, v4, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-static/range {p6 .. p6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    if-eqz v6, :cond_22

    .line 735
    .line 736
    const-string v4, "none"

    .line 737
    .line 738
    :cond_22
    const-string v6, "SbStateController"

    .line 739
    .line 740
    new-instance v7, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .line 744
    .line 745
    move-object/from16 v8, p7

    .line 746
    .line 747
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v8, " dim="

    .line 751
    .line 752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    const-string v1, " behavior="

    .line 759
    .line 760
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    const-string v1, " requested visible types: "

    .line 767
    .line 768
    invoke-static {v7, v1, v4, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    :cond_23
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->systemStatusAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 772
    .line 773
    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    .line 774
    .line 775
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    and-int v1, p6, v1

    .line 783
    .line 784
    if-eqz v1, :cond_26

    .line 785
    .line 786
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 787
    .line 788
    iget v1, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    .line 789
    .line 790
    if-nez v1, :cond_24

    .line 791
    .line 792
    move v1, v2

    .line 793
    goto :goto_21

    .line 794
    :cond_24
    move v1, v5

    .line 795
    :goto_21
    if-nez v1, :cond_25

    .line 796
    .line 797
    goto :goto_22

    .line 798
    :cond_25
    move v2, v5

    .line 799
    :cond_26
    :goto_22
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->statusBarHidden:Z

    .line 800
    .line 801
    return-void
.end method
