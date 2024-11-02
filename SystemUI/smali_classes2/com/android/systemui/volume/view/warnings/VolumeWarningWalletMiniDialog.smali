.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;
.super Landroid/app/Dialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public final dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V
    .locals 7

    .line 1
    const v0, 0x7f140567

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    .line 8
    .line 9
    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 16
    .line 17
    const p1, 0x7f0d0521

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v2, 0x1770

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    .line 51
    .line 52
    .line 53
    const-string v2, "VolumeWarningWalletMiniDialog"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/high16 v0, 0x20000

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/16 v0, 0x400

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x100

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/16 v0, 0x200

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 102
    .line 103
    const/high16 v2, -0x1000000

    .line 104
    .line 105
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const/16 v0, 0x833

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const/4 v0, -0x1

    .line 125
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    int-to-float p1, p1

    .line 137
    const/high16 v0, 0x43b40000    # 360.0f

    .line 138
    .line 139
    div-float/2addr p1, v0

    .line 140
    const/16 v0, 0xa0

    .line 141
    .line 142
    int-to-float v0, v0

    .line 143
    mul-float/2addr p1, v0

    .line 144
    sget-object v0, Lcom/android/systemui/volume/util/ContextUtils;->INSTANCE:Lcom/android/systemui/volume/util/ContextUtils;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 162
    .line 163
    int-to-float v0, v0

    .line 164
    div-float/2addr p1, v0

    .line 165
    const v0, 0x7f0a0d2a

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/view/ViewGroup;

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const v4, 0x7f0715bc

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    int-to-float v3, v3

    .line 196
    mul-float/2addr v3, p1

    .line 197
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(Landroid/view/View;F)V

    .line 207
    .line 208
    .line 209
    const v0, 0x7f0a0d2b

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(Landroid/view/View;F)V

    .line 217
    .line 218
    .line 219
    const v0, 0x7f0a072e

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Landroid/widget/Button;

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    if-eqz v2, :cond_0

    .line 230
    .line 231
    invoke-virtual {v2}, Landroid/widget/Button;->getTextSize()F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    mul-float/2addr v4, p1

    .line 236
    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 237
    .line 238
    .line 239
    :cond_0
    const v2, 0x7f0a07fc

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    check-cast v4, Landroid/widget/Button;

    .line 247
    .line 248
    if-eqz v4, :cond_1

    .line 249
    .line 250
    invoke-virtual {v4}, Landroid/widget/Button;->getTextSize()F

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    mul-float/2addr v5, p1

    .line 255
    invoke-virtual {v4, v3, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 256
    .line 257
    .line 258
    sget-object v5, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    .line 259
    .line 260
    if-ne p2, v5, :cond_1

    .line 261
    .line 262
    sget-object v5, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    const/16 v5, 0x8

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    :cond_1
    const v4, 0x7f0a0d2c

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    check-cast v5, Landroid/widget/TextView;

    .line 280
    .line 281
    if-eqz v5, :cond_2

    .line 282
    .line 283
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    mul-float/2addr v6, p1

    .line 288
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    .line 290
    .line 291
    invoke-static {v5, p1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(Landroid/view/View;F)V

    .line 292
    .line 293
    .line 294
    :cond_2
    const v5, 0x7f0a0d29

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Landroid/widget/TextView;

    .line 302
    .line 303
    if-eqz v5, :cond_3

    .line 304
    .line 305
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    mul-float/2addr v6, p1

    .line 310
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 311
    .line 312
    .line 313
    invoke-static {v5, p1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->scaleWidthAndHeight(Landroid/view/View;F)V

    .line 314
    .line 315
    .line 316
    :cond_3
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Landroid/widget/TextView;

    .line 327
    .line 328
    sget-object v4, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 329
    .line 330
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    aget p2, v4, p2

    .line 335
    .line 336
    if-eq p2, v1, :cond_6

    .line 337
    .line 338
    const/4 v1, 0x2

    .line 339
    if-eq p2, v1, :cond_5

    .line 340
    .line 341
    const/4 v1, 0x3

    .line 342
    if-eq p2, v1, :cond_4

    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    const v1, 0x7f1311a3

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    const p2, 0x1040013

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    goto :goto_0

    .line 374
    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    const v1, 0x7f131210

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    const p2, 0x7f13120c

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    goto :goto_0

    .line 403
    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 404
    .line 405
    .line 406
    move-result-object p2

    .line 407
    const v1, 0x7f131225

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    const p2, 0x7f131224

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    check-cast p1, Landroid/widget/Button;

    .line 436
    .line 437
    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$1;

    .line 438
    .line 439
    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    check-cast p1, Landroid/widget/Button;

    .line 450
    .line 451
    new-instance p2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$2;

    .line 452
    .line 453
    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$setClickListener$2;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    return-void
.end method

.method public static scaleWidthAndHeight(Landroid/view/View;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    mul-float/2addr v1, p1

    .line 13
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    .line 19
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr v1, p1

    .line 25
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->dialogType:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 25
    .line 26
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 27
    .line 28
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 42
    .line 43
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 44
    .line 45
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 59
    .line 60
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 61
    .line 62
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 63
    .line 64
    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final getWindow()Landroid/view/Window;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 20
    .line 21
    const v0, 0x7f0a0d2c

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0a0d2b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0a0d29

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->getWindow()Landroid/view/Window;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 60
    .line 61
    const/high16 v0, -0x34000000    # -3.3554432E7f

    .line 62
    .line 63
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->dismiss()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
