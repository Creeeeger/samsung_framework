.class public Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBatteryPaint:Landroid/graphics/Paint;

.field public final mBoltPaint:Landroid/graphics/Paint;

.field public final mButtonFrame:Landroid/graphics/RectF;

.field public mButtonHeightFraction:F

.field public final mColors:[I

.field public final mContext:Landroid/content/Context;

.field public final mCriticalLevel:I

.field public final mFrame:Landroid/graphics/RectF;

.field public final mFramePaint:Landroid/graphics/Paint;

.field public mHeight:I

.field public final mIconTint:I

.field public final mIntrinsicHeight:I

.field public final mIntrinsicWidth:I

.field public mLevel:I

.field public final mOutlinePath:Landroid/graphics/Path;

.field public final mPadding:Landroid/graphics/Rect;

.field public final mPlusPaint:Landroid/graphics/Paint;

.field public final mShapePath:Landroid/graphics/Path;

.field public final mWarningString:Ljava/lang/String;

.field public mWarningTextHeight:F

.field public final mWarningTextPaint:Landroid/graphics/Paint;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroid/graphics/Path;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/Path;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    .line 63
    .line 64
    new-instance v0, Landroid/graphics/Path;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const v1, 0x7f03000d

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const v2, 0x7f03000e

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    mul-int/lit8 v4, v3, 0x2

    .line 94
    .line 95
    new-array v4, v4, [I

    .line 96
    .line 97
    iput-object v4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    move v5, v4

    .line 101
    :goto_0
    if-ge v5, v3, :cond_1

    .line 102
    .line 103
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 104
    .line 105
    mul-int/lit8 v7, v5, 0x2

    .line 106
    .line 107
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    aput v8, v6, v7

    .line 112
    .line 113
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getType(I)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    const/4 v8, 0x2

    .line 118
    if-ne v6, v8, :cond_0

    .line 119
    .line 120
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 121
    .line 122
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-static {v8, p1, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    aput v8, v6, v7

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 136
    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    aput v8, v6, v7

    .line 144
    .line 145
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    .line 153
    .line 154
    const v1, 0x7f1301dd

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iput-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const v2, 0x10e0056

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const/high16 v2, 0x7f090000

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const v2, 0x7f090001

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const v2, 0x7f090002

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    .line 209
    .line 210
    .line 211
    new-instance v1, Landroid/graphics/Paint;

    .line 212
    .line 213
    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 214
    .line 215
    .line 216
    iput-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 222
    .line 223
    .line 224
    const/4 p2, 0x0

    .line 225
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    .line 227
    .line 228
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Landroid/graphics/Paint;

    .line 234
    .line 235
    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 236
    .line 237
    .line 238
    iput-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 239
    .line 240
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 244
    .line 245
    .line 246
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 247
    .line 248
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    .line 250
    .line 251
    new-instance p2, Landroid/graphics/Paint;

    .line 252
    .line 253
    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 254
    .line 255
    .line 256
    const-string/jumbo v1, "sans-serif-condensed"

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 264
    .line 265
    .line 266
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 267
    .line 268
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    .line 270
    .line 271
    new-instance p2, Landroid/graphics/Paint;

    .line 272
    .line 273
    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 274
    .line 275
    .line 276
    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 277
    .line 278
    const-string/jumbo v1, "sans-serif"

    .line 279
    .line 280
    .line 281
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 286
    .line 287
    .line 288
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 289
    .line 290
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 294
    .line 295
    array-length v2, v1

    .line 296
    if-le v2, v3, :cond_2

    .line 297
    .line 298
    aget v1, v1, v3

    .line 299
    .line 300
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    .line 302
    .line 303
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 304
    .line 305
    const v1, 0x7f0603e0

    .line 306
    .line 307
    .line 308
    invoke-static {v1, p2}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 309
    .line 310
    .line 311
    new-instance p2, Landroid/graphics/Paint;

    .line 312
    .line 313
    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 314
    .line 315
    .line 316
    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    .line 317
    .line 318
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 319
    .line 320
    const v2, 0x7f060054

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    .line 329
    .line 330
    const p2, 0x7f03000c

    .line 331
    .line 332
    .line 333
    invoke-static {p2, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(ILandroid/content/res/Resources;)[F

    .line 334
    .line 335
    .line 336
    new-instance p2, Landroid/graphics/Paint;

    .line 337
    .line 338
    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 339
    .line 340
    .line 341
    iput-object p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    .line 342
    .line 343
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    const v2, 0x7f060055

    .line 346
    .line 347
    .line 348
    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    .line 354
    .line 355
    const v1, 0x7f03000f

    .line 356
    .line 357
    .line 358
    invoke-static {v1, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(ILandroid/content/res/Resources;)[F

    .line 359
    .line 360
    .line 361
    new-instance v0, Landroid/graphics/Paint;

    .line 362
    .line 363
    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    .line 372
    .line 373
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 374
    .line 375
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    const v1, 0x7f0700b2

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    int-to-float p2, p2

    .line 390
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    const v0, 0x7f0700b3

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 401
    .line 402
    .line 403
    move-result p2

    .line 404
    iput p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    .line 405
    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    const p2, 0x7f0700ab

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    .line 418
    .line 419
    return-void
.end method

.method public static loadPoints(ILandroid/content/res/Resources;)[F
    .locals 6

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    move v0, p1

    .line 7
    move v1, v0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    if-ge v0, v3, :cond_0

    .line 11
    .line 12
    aget v3, p0, v0

    .line 13
    .line 14
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v3, v0, 0x1

    .line 19
    .line 20
    aget v3, p0, v3

    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p0

    .line 30
    new-array v0, v0, [F

    .line 31
    .line 32
    :goto_1
    array-length v3, p0

    .line 33
    if-ge p1, v3, :cond_1

    .line 34
    .line 35
    aget v3, p0, p1

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    int-to-float v4, v1

    .line 39
    div-float/2addr v3, v4

    .line 40
    aput v3, v0, p1

    .line 41
    .line 42
    add-int/lit8 v3, p1, 0x1

    .line 43
    .line 44
    aget v4, p0, v3

    .line 45
    .line 46
    int-to-float v4, v4

    .line 47
    int-to-float v5, v2

    .line 48
    div-float/2addr v4, v5

    .line 49
    aput v4, v0, v3

    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    int-to-float v2, v0

    .line 12
    const/high16 v3, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v2, v3

    .line 15
    iget v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getAspectRatio()F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 22
    .line 23
    int-to-float v5, v5

    .line 24
    mul-float/2addr v4, v5

    .line 25
    float-to-int v4, v4

    .line 26
    iget v5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 27
    .line 28
    sub-int/2addr v5, v4

    .line 29
    div-int/lit8 v5, v5, 0x2

    .line 30
    .line 31
    int-to-float v6, v3

    .line 32
    iget v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    .line 33
    .line 34
    mul-float/2addr v6, v7

    .line 35
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    add-int/2addr v8, v9

    .line 46
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    sub-int/2addr v1, v7

    .line 51
    sub-int/2addr v1, v3

    .line 52
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 53
    .line 54
    int-to-float v9, v8

    .line 55
    int-to-float v10, v1

    .line 56
    add-int/2addr v8, v4

    .line 57
    int-to-float v8, v8

    .line 58
    add-int/2addr v3, v1

    .line 59
    int-to-float v1, v3

    .line 60
    invoke-virtual {v7, v9, v10, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 64
    .line 65
    int-to-float v3, v5

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 73
    .line 74
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 75
    .line 76
    int-to-float v4, v4

    .line 77
    const v7, 0x3e8f5c29    # 0.28f

    .line 78
    .line 79
    .line 80
    mul-float/2addr v4, v7

    .line 81
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    int-to-float v7, v7

    .line 86
    add-float/2addr v3, v7

    .line 87
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 88
    .line 89
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    int-to-float v4, v4

    .line 98
    sub-float/2addr v7, v4

    .line 99
    iget-object v4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 100
    .line 101
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 102
    .line 103
    int-to-float v6, v6

    .line 104
    add-float/2addr v4, v6

    .line 105
    invoke-virtual {v1, v3, v8, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 109
    .line 110
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 111
    .line 112
    add-float/2addr v3, v6

    .line 113
    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    move v4, v3

    .line 119
    :goto_0
    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 120
    .line 121
    array-length v8, v7

    .line 122
    if-ge v3, v8, :cond_3

    .line 123
    .line 124
    aget v4, v7, v3

    .line 125
    .line 126
    add-int/lit8 v8, v3, 0x1

    .line 127
    .line 128
    aget v8, v7, v8

    .line 129
    .line 130
    if-gt v0, v4, :cond_2

    .line 131
    .line 132
    array-length v4, v7

    .line 133
    add-int/lit8 v4, v4, -0x2

    .line 134
    .line 135
    if-ne v3, v4, :cond_1

    .line 136
    .line 137
    iget v4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v4, v8

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 143
    .line 144
    move v4, v8

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    .line 148
    .line 149
    const/16 v1, 0x60

    .line 150
    .line 151
    const/high16 v3, 0x3f800000    # 1.0f

    .line 152
    .line 153
    if-lt v0, v1, :cond_4

    .line 154
    .line 155
    move v2, v3

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    iget v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    .line 158
    .line 159
    if-gt v0, v1, :cond_5

    .line 160
    .line 161
    move v2, v5

    .line 162
    :cond_5
    :goto_2
    cmpl-float v1, v2, v3

    .line 163
    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 167
    .line 168
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 172
    .line 173
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-static {v3, v2, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    :goto_3
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getRadiusRatio()F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 198
    .line 199
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    add-float/2addr v3, v6

    .line 204
    mul-float/2addr v3, v2

    .line 205
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 206
    .line 207
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 208
    .line 209
    invoke-virtual {v2, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 213
    .line 214
    iget-object v4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 215
    .line 216
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 217
    .line 218
    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 222
    .line 223
    iget-object v4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 224
    .line 225
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 226
    .line 227
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 233
    .line 234
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 235
    .line 236
    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 237
    .line 238
    .line 239
    new-instance v2, Landroid/graphics/Path;

    .line 240
    .line 241
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 242
    .line 243
    .line 244
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 245
    .line 246
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 247
    .line 248
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 249
    .line 250
    .line 251
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOutlinePath:Landroid/graphics/Path;

    .line 252
    .line 253
    sget-object v4, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    .line 254
    .line 255
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 256
    .line 257
    .line 258
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 259
    .line 260
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    .line 261
    .line 262
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 266
    .line 267
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 273
    .line 274
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 278
    .line 279
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 280
    .line 281
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    .line 286
    .line 287
    iget v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    .line 288
    .line 289
    if-gt v0, v1, :cond_7

    .line 290
    .line 291
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 292
    .line 293
    int-to-float v0, v0

    .line 294
    const/high16 v1, 0x3f000000    # 0.5f

    .line 295
    .line 296
    mul-float/2addr v0, v1

    .line 297
    add-float/2addr v0, v9

    .line 298
    iget v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 299
    .line 300
    int-to-float v1, v1

    .line 301
    iget v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    .line 302
    .line 303
    add-float/2addr v1, v2

    .line 304
    const v2, 0x3ef5c28f    # 0.48f

    .line 305
    .line 306
    .line 307
    mul-float/2addr v1, v2

    .line 308
    add-float/2addr v1, v10

    .line 309
    iget-object v2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 312
    .line 313
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 314
    .line 315
    .line 316
    :cond_7
    return-void
.end method

.method public getAspectRatio()F
    .locals 0

    .line 1
    const p0, 0x3f147ae1    # 0.58f

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public getRadiusRatio()F
    .locals 0

    .line 1
    const p0, 0x3d70f0f1

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setBounds(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    .line 10
    iget-object p3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPadding:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 13
    .line 14
    sub-int/2addr p2, p4

    .line 15
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    add-int/2addr p4, v0

    .line 20
    sub-int/2addr p2, p4

    .line 21
    iput p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 22
    .line 23
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v0, p3, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    sub-int/2addr p4, v0

    .line 28
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    iget p3, p3, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    add-int/2addr p1, p3

    .line 33
    sub-int/2addr p4, p1

    .line 34
    iput p4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    int-to-float p2, p2

    .line 39
    const/high16 p3, 0x3f400000    # 0.75f

    .line 40
    .line 41
    mul-float/2addr p2, p3

    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 52
    .line 53
    neg-float p1, p1

    .line 54
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    .line 55
    .line 56
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 24
    .line 25
    .line 26
    return-void
.end method
