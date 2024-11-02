.class public Landroidx/picker/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

.field public final mContext:Landroid/content/Context;

.field public mCurrentColorContainer:Landroid/view/View;

.field public mCurrentColorView:Landroid/widget/ImageView;

.field public final mCurrentFontScale:F

.field public final mImageButtonClickListener:Landroidx/picker/widget/SeslColorPicker$4;

.field public final mIsLightTheme:Z

.field public mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

.field public mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

.field public final mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

.field public mPickedColorContainer:Landroid/view/View;

.field public mPickedColorView:Landroid/widget/ImageView;

.field public mRecentColorListLayout:Landroid/widget/LinearLayout;

.field public final mRecentColorValues:Ljava/util/ArrayList;

.field public mRecentlyDivider:Landroid/view/View;

.field public mRecentlyText:Landroid/widget/TextView;

.field public final mResources:Landroid/content/res/Resources;

.field public mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x19b

    .line 5
    .line 6
    const/16 v0, 0x140

    .line 7
    .line 8
    const/16 v1, 0x168

    .line 9
    .line 10
    filled-new-array {v0, v1, p2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Landroidx/picker/widget/SeslColorPicker$4;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/picker/widget/SeslColorPicker$4;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker/widget/SeslColorPicker$4;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 28
    .line 29
    new-instance v1, Landroid/util/TypedValue;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f0402fa

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    .line 44
    .line 45
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move v1, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v1, v2

    .line 53
    :goto_0
    iput-boolean v1, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 60
    .line 61
    iput v1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 62
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const v1, 0x7f0d03b5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    new-instance p1, Landroidx/picker/widget/SeslRecentColorInfo;

    .line 74
    .line 75
    invoke-direct {p1}, Landroidx/picker/widget/SeslRecentColorInfo;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Landroidx/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 81
    .line 82
    new-instance p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 83
    .line 84
    invoke-direct {p1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 94
    .line 95
    if-ne p1, v4, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 102
    .line 103
    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    .line 105
    rem-float v1, v0, v1

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    cmpl-float v1, v1, v3

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    .line 114
    int-to-float p1, p1

    .line 115
    div-float v0, p1, v0

    .line 116
    .line 117
    float-to-int v0, v0

    .line 118
    move v1, v2

    .line 119
    :goto_1
    const/4 v3, 0x3

    .line 120
    if-ge v1, v3, :cond_2

    .line 121
    .line 122
    aget v3, p2, v1

    .line 123
    .line 124
    if-ne v3, v0, :cond_1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    move v4, v2

    .line 131
    :goto_2
    if-eqz v4, :cond_3

    .line 132
    .line 133
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 134
    .line 135
    const v0, 0x7f070fd4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 143
    .line 144
    const v1, 0x7f070f8e

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    mul-int/lit8 v0, v0, 0x2

    .line 152
    .line 153
    add-int/2addr v0, p2

    .line 154
    int-to-float v0, v0

    .line 155
    cmpg-float v0, p1, v0

    .line 156
    .line 157
    if-gez v0, :cond_3

    .line 158
    .line 159
    int-to-float p2, p2

    .line 160
    sub-float/2addr p1, p2

    .line 161
    const/high16 p2, 0x40000000    # 2.0f

    .line 162
    .line 163
    div-float/2addr p1, p2

    .line 164
    float-to-int p1, p1

    .line 165
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 166
    .line 167
    const v0, 0x7f070f90

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 175
    .line 176
    const v1, 0x7f070f8d

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const v1, 0x7f0a09ee

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {v1, p1, p2, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    .line 194
    .line 195
    :cond_3
    const p1, 0x7f0a09ed

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Landroid/widget/ImageView;

    .line 203
    .line 204
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 205
    .line 206
    const p1, 0x7f0a09f5

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Landroid/widget/ImageView;

    .line 214
    .line 215
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 216
    .line 217
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 218
    .line 219
    iget-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 220
    .line 221
    if-eqz p2, :cond_4

    .line 222
    .line 223
    const p2, 0x7f06061e

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_4
    const p2, 0x7f06061d

    .line 228
    .line 229
    .line 230
    :goto_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    const p2, 0x7f0a09ec

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    check-cast p2, Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    .line 245
    .line 246
    const v0, 0x7f0a09f4

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    .line 257
    .line 258
    iget p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 259
    .line 260
    const v1, 0x3f99999a    # 1.2f

    .line 261
    .line 262
    .line 263
    cmpl-float p1, p1, v1

    .line 264
    .line 265
    const-wide v3, 0x3ff3333340000000L    # 1.2000000476837158

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    const v5, 0x7f070fe3

    .line 271
    .line 272
    .line 273
    if-lez p1, :cond_5

    .line 274
    .line 275
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 276
    .line 277
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    int-to-float p1, p1

    .line 282
    iget v6, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 283
    .line 284
    div-float v6, p1, v6

    .line 285
    .line 286
    float-to-double v6, v6

    .line 287
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 288
    .line 289
    .line 290
    move-result-wide v6

    .line 291
    mul-double/2addr v6, v3

    .line 292
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 293
    .line 294
    .line 295
    move-result-wide v6

    .line 296
    double-to-float v6, v6

    .line 297
    invoke-virtual {p2, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 298
    .line 299
    .line 300
    iget p2, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 301
    .line 302
    div-float/2addr p1, p2

    .line 303
    float-to-double p1, p1

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 305
    .line 306
    .line 307
    move-result-wide p1

    .line 308
    mul-double/2addr p1, v3

    .line 309
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 310
    .line 311
    .line 312
    move-result-wide p1

    .line 313
    double-to-float p1, p1

    .line 314
    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    .line 316
    .line 317
    :cond_5
    const p1, 0x7f0a09eb

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorContainer:Landroid/view/View;

    .line 325
    .line 326
    const p1, 0x7f0a09f3

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    .line 334
    .line 335
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorView:Landroid/widget/ImageView;

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 342
    .line 343
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 344
    .line 345
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 346
    .line 347
    iget-object p2, p2, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 348
    .line 349
    if-eqz p2, :cond_6

    .line 350
    .line 351
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 352
    .line 353
    .line 354
    move-result p2

    .line 355
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 356
    .line 357
    .line 358
    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentColorView:Landroid/widget/ImageView;

    .line 359
    .line 360
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 365
    .line 366
    const p1, 0x7f0a09e8

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Landroidx/picker/widget/SeslColorSwatchView;

    .line 374
    .line 375
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    .line 376
    .line 377
    new-instance p2, Landroidx/picker/widget/SeslColorPicker$1;

    .line 378
    .line 379
    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslColorPicker$1;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    .line 380
    .line 381
    .line 382
    iput-object p2, p1, Landroidx/picker/widget/SeslColorSwatchView;->mListener:Landroidx/picker/widget/SeslColorPicker$1;

    .line 383
    .line 384
    const p1, 0x7f0a09f0

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 392
    .line 393
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 394
    .line 395
    const p1, 0x7f0a09f1

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Landroid/widget/FrameLayout;

    .line 403
    .line 404
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 405
    .line 406
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 407
    .line 408
    const/16 p2, 0x8

    .line 409
    .line 410
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 414
    .line 415
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 419
    .line 420
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 421
    .line 422
    iget-object p2, p2, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 423
    .line 424
    const/16 v0, 0xff

    .line 425
    .line 426
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 427
    .line 428
    .line 429
    if-eqz p2, :cond_7

    .line 430
    .line 431
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result p2

    .line 435
    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 436
    .line 437
    .line 438
    :cond_7
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object p2

    .line 442
    const v0, 0x7f080fe5

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 450
    .line 451
    iput-object p2, p1, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 452
    .line 453
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    const v0, 0x7f080fe7

    .line 465
    .line 466
    .line 467
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 468
    .line 469
    .line 470
    move-result-object p2

    .line 471
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 475
    .line 476
    .line 477
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 478
    .line 479
    new-instance p2, Landroidx/picker/widget/SeslColorPicker$2;

    .line 480
    .line 481
    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslColorPicker$2;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 485
    .line 486
    .line 487
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 488
    .line 489
    new-instance p2, Landroidx/picker/widget/SeslColorPicker$3;

    .line 490
    .line 491
    invoke-direct {p2, p0}, Landroidx/picker/widget/SeslColorPicker$3;-><init>(Landroidx/picker/widget/SeslColorPicker;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBarContainer:Landroid/widget/FrameLayout;

    .line 498
    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 505
    .line 506
    const v6, 0x7f131015

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v0, ", "

    .line 517
    .line 518
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    iget-object v6, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 522
    .line 523
    const v7, 0x7f13101d

    .line 524
    .line 525
    .line 526
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 537
    .line 538
    const v6, 0x7f130ffe

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p2

    .line 552
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    const p1, 0x7f0a09fe

    .line 556
    .line 557
    .line 558
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    check-cast p1, Landroid/widget/LinearLayout;

    .line 563
    .line 564
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 565
    .line 566
    const p1, 0x7f0a09fd

    .line 567
    .line 568
    .line 569
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    check-cast p1, Landroid/widget/TextView;

    .line 574
    .line 575
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    .line 576
    .line 577
    const p1, 0x7f0a09f6

    .line 578
    .line 579
    .line 580
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    .line 585
    .line 586
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 587
    .line 588
    const p2, 0x7f130fe9

    .line 589
    .line 590
    .line 591
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 595
    .line 596
    const p2, 0x7f130fed

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 603
    .line 604
    const p2, 0x7f130fec

    .line 605
    .line 606
    .line 607
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 611
    .line 612
    const p2, 0x7f130fe8

    .line 613
    .line 614
    .line 615
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 619
    .line 620
    const p2, 0x7f130fe7

    .line 621
    .line 622
    .line 623
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 627
    .line 628
    const p2, 0x7f130feb

    .line 629
    .line 630
    .line 631
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 635
    .line 636
    iget-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 637
    .line 638
    if-eqz p2, :cond_8

    .line 639
    .line 640
    const p2, 0x7f060629

    .line 641
    .line 642
    .line 643
    goto :goto_4

    .line 644
    :cond_8
    const p2, 0x7f060628

    .line 645
    .line 646
    .line 647
    :goto_4
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 648
    .line 649
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    move p2, v2

    .line 654
    :goto_5
    const/4 v0, 0x6

    .line 655
    if-ge p2, v0, :cond_b

    .line 656
    .line 657
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 658
    .line 659
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    iget-object v7, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 668
    .line 669
    iget-boolean v8, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 670
    .line 671
    if-eqz v8, :cond_9

    .line 672
    .line 673
    const v8, 0x7f080fed

    .line 674
    .line 675
    .line 676
    goto :goto_6

    .line 677
    :cond_9
    const v8, 0x7f080fec

    .line 678
    .line 679
    .line 680
    :goto_6
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 681
    .line 682
    .line 683
    move-result-object v7

    .line 684
    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 685
    .line 686
    if-eqz v6, :cond_a

    .line 687
    .line 688
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 689
    .line 690
    .line 691
    move-result v6

    .line 692
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 693
    .line 694
    .line 695
    :cond_a
    const/16 v6, 0x3d

    .line 696
    .line 697
    invoke-static {v6, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 698
    .line 699
    .line 700
    move-result v6

    .line 701
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 702
    .line 703
    new-array v9, v2, [I

    .line 704
    .line 705
    filled-new-array {v9}, [[I

    .line 706
    .line 707
    .line 708
    move-result-object v9

    .line 709
    filled-new-array {v6}, [I

    .line 710
    .line 711
    .line 712
    move-result-object v6

    .line 713
    invoke-direct {v8, v9, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 714
    .line 715
    .line 716
    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    .line 717
    .line 718
    const/4 v9, 0x0

    .line 719
    invoke-direct {v6, v8, v7, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 723
    .line 724
    .line 725
    iget-object v6, p0, Landroidx/picker/widget/SeslColorPicker;->mImageButtonClickListener:Landroidx/picker/widget/SeslColorPicker$4;

    .line 726
    .line 727
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 734
    .line 735
    .line 736
    add-int/lit8 p2, p2, 0x1

    .line 737
    .line 738
    goto :goto_5

    .line 739
    :cond_b
    iget p1, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 740
    .line 741
    cmpl-float p1, p1, v1

    .line 742
    .line 743
    if-lez p1, :cond_c

    .line 744
    .line 745
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 746
    .line 747
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 748
    .line 749
    .line 750
    move-result p1

    .line 751
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    .line 752
    .line 753
    int-to-float p1, p1

    .line 754
    iget v0, p0, Landroidx/picker/widget/SeslColorPicker;->mCurrentFontScale:F

    .line 755
    .line 756
    div-float/2addr p1, v0

    .line 757
    float-to-double v0, p1

    .line 758
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 759
    .line 760
    .line 761
    move-result-wide v0

    .line 762
    mul-double/2addr v0, v3

    .line 763
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 764
    .line 765
    .line 766
    move-result-wide v0

    .line 767
    double-to-float p1, v0

    .line 768
    invoke-virtual {p2, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 769
    .line 770
    .line 771
    :cond_c
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 772
    .line 773
    iget-boolean p2, p0, Landroidx/picker/widget/SeslColorPicker;->mIsLightTheme:Z

    .line 774
    .line 775
    if-eqz p2, :cond_d

    .line 776
    .line 777
    const p2, 0x7f06062b

    .line 778
    .line 779
    .line 780
    goto :goto_7

    .line 781
    :cond_d
    const p2, 0x7f06062a

    .line 782
    .line 783
    .line 784
    :goto_7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 785
    .line 786
    .line 787
    move-result p1

    .line 788
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyText:Landroid/widget/TextView;

    .line 789
    .line 790
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    .line 792
    .line 793
    iget-object p2, p0, Landroidx/picker/widget/SeslColorPicker;->mRecentlyDivider:Landroid/view/View;

    .line 794
    .line 795
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 796
    .line 797
    .line 798
    move-result-object p2

    .line 799
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p0}, Landroidx/picker/widget/SeslColorPicker;->updateCurrentColor()V

    .line 803
    .line 804
    .line 805
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 806
    .line 807
    iget-object p1, p1, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 808
    .line 809
    if-eqz p1, :cond_e

    .line 810
    .line 811
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 812
    .line 813
    .line 814
    move-result p1

    .line 815
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 816
    .line 817
    .line 818
    :cond_e
    return-void
.end method


# virtual methods
.method public final mapColorOnColorWheel(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 19
    .line 20
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 23
    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslColorSwatchView;->setCursorRect(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mCursorIndex:Landroid/graphics/Point;

    .line 40
    .line 41
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    mul-int/lit8 v2, v2, 0xb

    .line 44
    .line 45
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, -0x1

    .line 52
    iput v1, v0, Landroidx/picker/widget/SeslColorSwatchView;->mSelectedVirtualViewId:I

    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslOpacitySeekBar;->initColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 62
    .line 63
    iget-object v2, v0, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(I)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public final setCurrentColorViewDescription(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker;->mColorSwatchView:Landroidx/picker/widget/SeslColorSwatchView;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroidx/picker/widget/SeslColorSwatchView;->getCursorIndexAt(I)Landroid/graphics/Point;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-boolean v1, v2, Landroidx/picker/widget/SeslColorSwatchView;->mFromUser:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v2, Landroidx/picker/widget/SeslColorSwatchView;->mColorSwatchDescription:[[Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    aget-object v1, v1, v3

    .line 28
    .line 29
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    aget-object v1, v1, p1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v2, Landroidx/picker/widget/SeslColorSwatchView;->mTouchHelper:Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;

    .line 36
    .line 37
    mul-int/lit8 p1, p1, 0xb

    .line 38
    .line 39
    add-int/2addr p1, v3

    .line 40
    sget v2, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->$r8$clinit:I

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroidx/picker/widget/SeslColorSwatchView$SeslColorSwatchViewTouchHelper;->getItemDescription(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    move-object v1, p1

    .line 49
    :cond_1
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string p1, ", "

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker;->mResources:Landroid/content/res/Resources;

    .line 60
    .line 61
    const v1, 0x7f131014    # 1.9548E38f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColorContainer:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final updateCurrentColor()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker/widget/SeslOpacitySeekBar;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, v1, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v4, v1, Landroidx/picker/widget/SeslOpacitySeekBar;->mColors:[I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    aput v2, v4, v5

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Landroidx/picker/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslColorPicker;->setCurrentColorViewDescription(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
