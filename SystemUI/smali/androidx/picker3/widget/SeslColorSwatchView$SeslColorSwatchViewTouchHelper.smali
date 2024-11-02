.class public final Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mColorDescription:[[Ljava/lang/String;

.field public mVirtualCursorIndexX:I

.field public mVirtualCursorIndexY:I

.field public final mVirtualViewRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorSwatchView;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorSwatchView;Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    invoke-direct {v0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 13
    .line 14
    const v3, 0x7f131022

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 22
    .line 23
    const v4, 0x7f13100b

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 31
    .line 32
    const v5, 0x7f131000

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 40
    .line 41
    const v6, 0x7f130ff6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v6, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 49
    .line 50
    const v7, 0x7f130fe3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 62
    .line 63
    const v3, 0x7f13100f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 71
    .line 72
    const v4, 0x7f13101b

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 80
    .line 81
    const v5, 0x7f130ffa

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 93
    .line 94
    const v3, 0x7f13100e

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 102
    .line 103
    const v4, 0x7f131017

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 111
    .line 112
    const v5, 0x7f130ff9

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 124
    .line 125
    const v3, 0x7f131012

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 133
    .line 134
    const v4, 0x7f131023

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 142
    .line 143
    const v5, 0x7f130ffd

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 155
    .line 156
    const v3, 0x7f13100c

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 164
    .line 165
    const v4, 0x7f131004

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 173
    .line 174
    const v5, 0x7f130ff7

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 186
    .line 187
    const v3, 0x7f131010

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 195
    .line 196
    const v4, 0x7f13101f

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 204
    .line 205
    const v5, 0x7f130ffb

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 217
    .line 218
    const v3, 0x7f13100a

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 226
    .line 227
    const v4, 0x7f130ff1

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 235
    .line 236
    const v5, 0x7f130ff5

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 248
    .line 249
    const v3, 0x7f131008

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 257
    .line 258
    const v4, 0x7f130fe2

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 266
    .line 267
    const v5, 0x7f130ff3

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 279
    .line 280
    const v3, 0x7f131009

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 288
    .line 289
    const v4, 0x7f130fe4

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 297
    .line 298
    const v5, 0x7f130ff4

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v15

    .line 309
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 310
    .line 311
    const v3, 0x7f131011

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 319
    .line 320
    const v4, 0x7f131021

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    iget-object v4, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 328
    .line 329
    const v5, 0x7f130ffc

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v16

    .line 340
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 341
    .line 342
    const v3, 0x7f13100d

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    iget-object v3, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 350
    .line 351
    const v4, 0x7f131013

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mResources:Landroid/content/res/Resources;

    .line 359
    .line 360
    const v4, 0x7f130ff8

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v17

    .line 371
    filled-new-array/range {v7 .. v17}, [[Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    .line 376
    .line 377
    new-instance v1, Landroid/graphics/Rect;

    .line 378
    .line 379
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 380
    .line 381
    .line 382
    iput-object v1, v0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    .line 383
    .line 384
    return-void
.end method


# virtual methods
.method public final getItemDescription(I)Ljava/lang/StringBuilder;
    .locals 10

    .line 1
    rem-int/lit8 v0, p1, 0xb

    .line 2
    .line 3
    iput v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 4
    .line 5
    div-int/lit8 p1, p1, 0xb

    .line 6
    .line 7
    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 12
    .line 13
    aget-object v0, v2, v0

    .line 14
    .line 15
    aget-object p1, v0, p1

    .line 16
    .line 17
    if-nez p1, :cond_a

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x6

    .line 30
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x3

    .line 32
    iget-object v8, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mColorDescription:[[Ljava/lang/String;

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget v9, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 37
    .line 38
    if-nez v9, :cond_0

    .line 39
    .line 40
    aget-object v0, v8, v0

    .line 41
    .line 42
    aget-object v0, v0, v4

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    if-ge v9, v7, :cond_1

    .line 49
    .line 50
    aget-object v0, v8, v0

    .line 51
    .line 52
    aget-object v0, v0, v2

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-ge v9, v5, :cond_2

    .line 59
    .line 60
    aget-object v0, v8, v0

    .line 61
    .line 62
    aget-object v0, v0, v3

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/16 v2, 0x9

    .line 69
    .line 70
    if-ge v9, v2, :cond_3

    .line 71
    .line 72
    aget-object v0, v8, v0

    .line 73
    .line 74
    aget-object v0, v0, v7

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    aget-object v0, v8, v0

    .line 81
    .line 82
    aget-object v0, v0, v6

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget v9, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 89
    .line 90
    if-ge v9, v7, :cond_5

    .line 91
    .line 92
    aget-object v0, v8, v0

    .line 93
    .line 94
    aget-object v0, v0, v4

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    if-ge v9, v5, :cond_6

    .line 101
    .line 102
    aget-object v0, v8, v0

    .line 103
    .line 104
    aget-object v0, v0, v2

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    aget-object v0, v8, v0

    .line 111
    .line 112
    aget-object v0, v0, v3

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :goto_0
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 118
    .line 119
    if-ne v0, v7, :cond_7

    .line 120
    .line 121
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 122
    .line 123
    if-ne v2, v7, :cond_7

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    const-string v2, ", "

    .line 127
    .line 128
    if-nez v0, :cond_8

    .line 129
    .line 130
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 131
    .line 132
    if-ne v0, v6, :cond_8

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v0, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    .line 138
    .line 139
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 140
    .line 141
    aget-object v0, v0, v2

    .line 142
    .line 143
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 144
    .line 145
    aget v0, v0, v2

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 152
    .line 153
    if-eq v0, v6, :cond_9

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorBrightness:[[I

    .line 159
    .line 160
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 161
    .line 162
    aget-object v0, v0, v2

    .line 163
    .line 164
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 165
    .line 166
    aget v0, v0, v2

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :cond_9
    :goto_1
    iget-object v0, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 172
    .line 173
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 174
    .line 175
    aget-object v0, v0, v2

    .line 176
    .line 177
    iget v2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 178
    .line 179
    aput-object p1, v0, v2

    .line 180
    .line 181
    :cond_a
    iget-object p1, v1, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 182
    .line 183
    iget v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 184
    .line 185
    aget-object p1, p1, v0

    .line 186
    .line 187
    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 188
    .line 189
    aget-object p0, p1, p0

    .line 190
    .line 191
    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 2
    .line 3
    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    sub-float/2addr p1, v1

    .line 7
    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    sub-float/2addr p2, v1

    .line 11
    iget v1, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 12
    .line 13
    const/high16 v2, 0x41300000    # 11.0f

    .line 14
    .line 15
    mul-float/2addr v2, v1

    .line 16
    iget v0, v0, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 17
    .line 18
    const/high16 v3, 0x41200000    # 10.0f

    .line 19
    .line 20
    mul-float/2addr v3, v0

    .line 21
    cmpl-float v4, p1, v2

    .line 22
    .line 23
    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-ltz v4, :cond_0

    .line 27
    .line 28
    sub-float p1, v2, v5

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    cmpg-float v2, p1, v6

    .line 32
    .line 33
    if-gez v2, :cond_1

    .line 34
    .line 35
    move p1, v6

    .line 36
    :cond_1
    :goto_0
    cmpl-float v2, p2, v3

    .line 37
    .line 38
    if-ltz v2, :cond_2

    .line 39
    .line 40
    sub-float p2, v3, v5

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    cmpg-float v2, p2, v6

    .line 44
    .line 45
    if-gez v2, :cond_3

    .line 46
    .line 47
    move p2, v6

    .line 48
    :cond_3
    :goto_1
    div-float/2addr p1, v1

    .line 49
    float-to-int p1, p1

    .line 50
    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 51
    .line 52
    div-float/2addr p2, v0

    .line 53
    float-to-int p2, p2

    .line 54
    iput p2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 55
    .line 56
    mul-int/lit8 p2, p2, 0xb

    .line 57
    .line 58
    add-int/2addr p2, p1

    .line 59
    return p2
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :goto_0
    const/16 v0, 0x6e

    .line 3
    .line 4
    if-ge p0, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/16 p3, 0x10

    .line 2
    .line 3
    if-eq p2, p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    rem-int/lit8 p2, p1, 0xb

    .line 7
    .line 8
    iput p2, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 9
    .line 10
    div-int/lit8 p1, p1, 0xb

    .line 11
    .line 12
    iput p1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 15
    .line 16
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mColorSwatch:[[I

    .line 17
    .line 18
    aget-object p2, p3, p2

    .line 19
    .line 20
    aget p1, p2, p1

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mListener:Landroidx/picker3/widget/SeslColorPicker$5;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroidx/picker3/widget/SeslColorPicker$5;->onColorSwatchChanged(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 30
    .line 31
    iget p0, p0, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final onPopulateEventForVirtualView(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11

    .line 1
    rem-int/lit8 v0, p1, 0xb

    .line 2
    .line 3
    iput v0, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexX:I

    .line 4
    .line 5
    div-int/lit8 v1, p1, 0xb

    .line 6
    .line 7
    iput v1, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualCursorIndexY:I

    .line 8
    .line 9
    int-to-float v2, v0

    .line 10
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->this$0:Landroidx/picker3/widget/SeslColorSwatchView;

    .line 11
    .line 12
    iget v4, v3, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemWidth:F

    .line 13
    .line 14
    mul-float/2addr v2, v4

    .line 15
    const/high16 v5, 0x40900000    # 4.5f

    .line 16
    .line 17
    add-float/2addr v2, v5

    .line 18
    iget v6, v3, Landroidx/picker3/widget/SeslColorSwatchView;->mStartMargin:I

    .line 19
    .line 20
    int-to-float v6, v6

    .line 21
    add-float/2addr v2, v6

    .line 22
    float-to-int v2, v2

    .line 23
    int-to-float v7, v1

    .line 24
    iget v8, v3, Landroidx/picker3/widget/SeslColorSwatchView;->mSwatchItemHeight:F

    .line 25
    .line 26
    mul-float/2addr v7, v8

    .line 27
    add-float/2addr v7, v5

    .line 28
    iget v9, v3, Landroidx/picker3/widget/SeslColorSwatchView;->mTopMargin:I

    .line 29
    .line 30
    int-to-float v9, v9

    .line 31
    add-float/2addr v7, v9

    .line 32
    float-to-int v7, v7

    .line 33
    const/4 v10, 0x1

    .line 34
    add-int/2addr v0, v10

    .line 35
    int-to-float v0, v0

    .line 36
    invoke-static {v0, v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    add-int/2addr v1, v10

    .line 42
    int-to-float v1, v1

    .line 43
    invoke-static {v1, v8, v5, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    float-to-int v1, v1

    .line 48
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->mVirtualViewRect:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v4, v2, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 61
    .line 62
    .line 63
    const/16 p0, 0x10

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 66
    .line 67
    .line 68
    const-class p0, Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget p0, v3, Landroidx/picker3/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    if-eq p0, v0, :cond_0

    .line 81
    .line 82
    if-ne p1, p0, :cond_0

    .line 83
    .line 84
    const/4 p0, 0x4

    .line 85
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 95
    .line 96
    invoke-virtual {p0, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method
