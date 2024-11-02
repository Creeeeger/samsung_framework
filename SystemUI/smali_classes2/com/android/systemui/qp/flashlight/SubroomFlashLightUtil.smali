.class public final Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mInstance:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;

.field public mBackButton:Landroid/widget/RelativeLayout;

.field public mFlashLightHelpText:Landroid/widget/TextView;

.field public mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

.field public mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

.field public mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mAccessibilityDelegate:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$1;

    .line 14
    .line 15
    const v3, 0x7f0a0b12

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 23
    .line 24
    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 25
    .line 26
    const v3, 0x7f0a0b15

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 34
    .line 35
    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 36
    .line 37
    const v3, 0x7f0a0b16

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 45
    .line 46
    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 47
    .line 48
    const v3, 0x7f0a0b0b

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    iput-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    const v3, 0x7f0a0b13

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v4, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpText:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v4, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    const v5, 0x7f0a0118

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v1, v4}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object v4, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 85
    .line 86
    .line 87
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 96
    .line 97
    const v7, 0x7f0a03fa

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const/16 v7, 0x8

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 110
    .line 111
    const v7, 0x7f0a03fb

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    const/4 v7, 0x0

    .line 119
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 123
    .line 124
    const v8, 0x7f0a03fd

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 135
    .line 136
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .line 148
    iget-object v9, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 149
    .line 150
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    check-cast v9, Landroid/widget/TextView;

    .line 155
    .line 156
    const-string/jumbo v10, "sec"

    .line 157
    .line 158
    .line 159
    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    const/16 v12, 0x258

    .line 164
    .line 165
    invoke-static {v11, v12, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    .line 171
    .line 172
    const v11, 0x7f070cae

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    const v13, 0x7f070cad

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    const v14, 0x7f070caa

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    const v15, 0x7f0712f5

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 201
    .line 202
    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v7, v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    const v6, 0x7f070ca6

    .line 215
    .line 216
    .line 217
    invoke-static {v6, v9}, Lcom/android/systemui/qp/util/SubscreenUtil;->setLabelTextSize(ILandroid/widget/TextView;)V

    .line 218
    .line 219
    .line 220
    const v9, 0x7f070cab

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    int-to-float v9, v9

    .line 228
    const/high16 v11, 0x3f800000    # 1.0f

    .line 229
    .line 230
    invoke-virtual {v3, v9, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 231
    .line 232
    .line 233
    const v9, 0x7f070cac

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    int-to-float v9, v9

    .line 241
    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    .line 243
    .line 244
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    .line 250
    .line 251
    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    const/16 v13, 0x190

    .line 256
    .line 257
    invoke-static {v9, v13, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightHelpView:Lcom/android/systemui/qp/flashlight/SubroomFlashLightButtonSettingsView;

    .line 265
    .line 266
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getBackgroundColor(Landroid/content/res/Resources;)I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 274
    .line 275
    const v9, 0x7f0a0c42

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Landroid/widget/Button;

    .line 283
    .line 284
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 289
    .line 290
    const v13, 0x7f070cb2

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    iput v14, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 298
    .line 299
    const v14, 0x7f070caf

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    iput v15, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 307
    .line 308
    const v15, 0x7f070ca8

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 312
    .line 313
    .line 314
    move-result v15

    .line 315
    const v6, 0x7f070ca7

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9, v7, v15, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 326
    .line 327
    .line 328
    const/16 v6, 0xd

    .line 329
    .line 330
    invoke-virtual {v9, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .line 335
    .line 336
    const v6, 0x7f070cb1

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    int-to-float v9, v9

    .line 344
    invoke-virtual {v3, v7, v9}, Landroid/widget/Button;->setTextSize(IF)V

    .line 345
    .line 346
    .line 347
    const v9, 0x7f070cb0

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 351
    .line 352
    .line 353
    move-result v15

    .line 354
    invoke-virtual {v3, v15, v7, v15, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 355
    .line 356
    .line 357
    const v15, 0x7f14048d

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v15}, Landroid/widget/Button;->setTextAppearance(I)V

    .line 361
    .line 362
    .line 363
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    .line 364
    .line 365
    .line 366
    move-result v15

    .line 367
    invoke-virtual {v3, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    check-cast v15, Landroid/graphics/drawable/RippleDrawable;

    .line 375
    .line 376
    const v9, 0x7f070ca4

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    invoke-virtual {v15, v7}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 384
    .line 385
    .line 386
    move-result-object v16

    .line 387
    move-object/from16 v9, v16

    .line 388
    .line 389
    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    .line 390
    .line 391
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 392
    .line 393
    .line 394
    const/4 v9, 0x1

    .line 395
    invoke-virtual {v15, v9}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 396
    .line 397
    .line 398
    move-result-object v15

    .line 399
    check-cast v15, Landroid/graphics/drawable/GradientDrawable;

    .line 400
    .line 401
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .line 409
    .line 410
    invoke-static {v3, v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->updateColor(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    .line 411
    .line 412
    .line 413
    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOff:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    .line 414
    .line 415
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getBackgroundColor(Landroid/content/res/Resources;)I

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    check-cast v3, Landroid/widget/ImageView;

    .line 427
    .line 428
    const v5, 0x7f081254

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 439
    .line 440
    const v6, 0x7f0712e8

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 444
    .line 445
    .line 446
    move-result v15

    .line 447
    iput v15, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 448
    .line 449
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 454
    .line 455
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .line 457
    .line 458
    iget-object v5, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 459
    .line 460
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    .line 466
    const v6, 0x7f0712ec

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 470
    .line 471
    .line 472
    move-result v15

    .line 473
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 474
    .line 475
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 480
    .line 481
    const v6, 0x7f0712eb

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    const v15, 0x7f0712ea

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 492
    .line 493
    .line 494
    move-result v15

    .line 495
    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 499
    .line 500
    .line 501
    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 502
    .line 503
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .line 505
    .line 506
    const v5, 0x7f0712e9

    .line 507
    .line 508
    .line 509
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    iget-object v6, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 514
    .line 515
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 519
    .line 520
    .line 521
    iget-object v5, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 522
    .line 523
    sget-object v6, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 524
    .line 525
    const v6, 0x7f081298

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 533
    .line 534
    .line 535
    new-instance v5, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    .line 536
    .line 537
    const v6, 0x7f1310d5

    .line 538
    .line 539
    .line 540
    invoke-direct {v5, v1, v6}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;-><init>(Landroid/content/Context;I)V

    .line 541
    .line 542
    .line 543
    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 544
    .line 545
    new-instance v15, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$$ExternalSyntheticLambda0;

    .line 546
    .line 547
    invoke-direct {v15, v5}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 551
    .line 552
    .line 553
    if-eqz v2, :cond_0

    .line 554
    .line 555
    const v1, 0x7f06082b

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    goto :goto_0

    .line 563
    :cond_0
    const v1, 0x7f06088a

    .line 564
    .line 565
    .line 566
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 571
    .line 572
    .line 573
    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mBackButton:Landroid/widget/RelativeLayout;

    .line 574
    .line 575
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 580
    .line 581
    .line 582
    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 583
    .line 584
    const v2, 0x7f0a0c43

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    check-cast v1, Landroid/widget/TextView;

    .line 592
    .line 593
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 598
    .line 599
    iget-object v3, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 600
    .line 601
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    check-cast v3, Landroid/widget/TextView;

    .line 606
    .line 607
    invoke-static {v10, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    invoke-static {v5, v12, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 616
    .line 617
    .line 618
    const/4 v5, -0x2

    .line 619
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 620
    .line 621
    const v5, 0x7f070cb6

    .line 622
    .line 623
    .line 624
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 625
    .line 626
    .line 627
    move-result v5

    .line 628
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 633
    .line 634
    const v10, 0x3f666666    # 0.9f

    .line 635
    .line 636
    .line 637
    cmpg-float v12, v6, v10

    .line 638
    .line 639
    const v15, 0x3fa66666    # 1.3f

    .line 640
    .line 641
    .line 642
    if-gez v12, :cond_1

    .line 643
    .line 644
    move v6, v10

    .line 645
    goto :goto_1

    .line 646
    :cond_1
    cmpl-float v12, v6, v15

    .line 647
    .line 648
    if-lez v12, :cond_2

    .line 649
    .line 650
    move v6, v15

    .line 651
    :cond_2
    :goto_1
    int-to-float v5, v5

    .line 652
    div-float/2addr v5, v6

    .line 653
    float-to-int v5, v5

    .line 654
    const v6, 0x7f071300

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 658
    .line 659
    .line 660
    move-result v6

    .line 661
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2, v7, v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    .line 672
    .line 673
    const v2, 0x7f070cb5

    .line 674
    .line 675
    .line 676
    invoke-static {v2, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->setLabelTextSize(ILandroid/widget/TextView;)V

    .line 677
    .line 678
    .line 679
    const v2, 0x7f14048e

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 683
    .line 684
    .line 685
    const v2, 0x7f070cb4

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    int-to-float v2, v2

    .line 693
    invoke-virtual {v1, v2, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 694
    .line 695
    .line 696
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    .line 702
    .line 703
    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 704
    .line 705
    const v2, 0x7f0a0c44

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    check-cast v1, Landroid/widget/Button;

    .line 713
    .line 714
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 719
    .line 720
    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 725
    .line 726
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 731
    .line 732
    const v5, 0x7f070cb3

    .line 733
    .line 734
    .line 735
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 740
    .line 741
    .line 742
    move-result-object v6

    .line 743
    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 744
    .line 745
    cmpg-float v11, v6, v10

    .line 746
    .line 747
    if-gez v11, :cond_3

    .line 748
    .line 749
    goto :goto_2

    .line 750
    :cond_3
    cmpl-float v10, v6, v15

    .line 751
    .line 752
    if-lez v10, :cond_4

    .line 753
    .line 754
    move v10, v15

    .line 755
    :goto_2
    move v6, v10

    .line 756
    :cond_4
    int-to-float v5, v5

    .line 757
    div-float/2addr v5, v6

    .line 758
    float-to-int v5, v5

    .line 759
    invoke-virtual {v2, v7, v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    .line 764
    .line 765
    const v2, 0x7f070ca6

    .line 766
    .line 767
    .line 768
    invoke-static {v2, v3}, Lcom/android/systemui/qp/util/SubscreenUtil;->setLabelTextSize(ILandroid/widget/TextView;)V

    .line 769
    .line 770
    .line 771
    const v2, 0x7f070cb1

    .line 772
    .line 773
    .line 774
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    int-to-float v2, v2

    .line 779
    invoke-virtual {v1, v7, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 780
    .line 781
    .line 782
    const v2, 0x7f070cb0

    .line 783
    .line 784
    .line 785
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    invoke-virtual {v1, v2, v7, v2, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 790
    .line 791
    .line 792
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getTextColor(Landroid/content/res/Resources;)I

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 797
    .line 798
    .line 799
    iget-object v2, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 800
    .line 801
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 813
    .line 814
    const v3, 0x7f070ca4

    .line 815
    .line 816
    .line 817
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 826
    .line 827
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 835
    .line 836
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 844
    .line 845
    invoke-static {v2, v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->updateColor(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    .line 846
    .line 847
    .line 848
    const v2, 0x7f14048d

    .line 849
    .line 850
    .line 851
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextAppearance(I)V

    .line 852
    .line 853
    .line 854
    iget-object v0, v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mFlashLightTurnOn:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    .line 855
    .line 856
    invoke-static {v4}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->getBackgroundColor(Landroid/content/res/Resources;)I

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 861
    .line 862
    .line 863
    :cond_5
    return-void
.end method

.method public static getBackgroundColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f06087f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f06088b

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    return p0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mInstance:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;-><init>(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mInstance:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;->mInstance:Lcom/android/systemui/qp/flashlight/SubroomFlashLightUtil;

    .line 13
    .line 14
    return-object p0
.end method

.method public static getTextColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f060882

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f06082e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    return p0
.end method

.method public static updateColor(Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V
    .locals 4

    .line 1
    const v0, 0x7f060881

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [I

    .line 10
    .line 11
    filled-new-array {v2}, [[I

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    filled-new-array {v0}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 32
    .line 33
    const v0, 0x7f060880

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
