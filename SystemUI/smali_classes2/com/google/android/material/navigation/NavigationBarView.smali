.class public abstract Lcom/google/android/material/navigation/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mMaxItemCount:I

.field public final mSelectedCallback:Lcom/google/android/material/navigation/NavigationBarView$1;

.field public final menu:Lcom/google/android/material/navigation/NavigationBarMenu;

.field public menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

.field public final menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field public final presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move/from16 v5, p3

    .line 10
    .line 11
    invoke-direct {v0, v1, v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/material/navigation/NavigationBarView$1;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationBarView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarView;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarView;->mSelectedCallback:Lcom/google/android/material/navigation/NavigationBarView$1;

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v4, Lcom/google/android/material/R$styleable;->NavigationBarView:[I

    .line 26
    .line 27
    const/16 v8, 0xa

    .line 28
    .line 29
    const/16 v9, 0x9

    .line 30
    .line 31
    const/16 v10, 0xe

    .line 32
    .line 33
    filled-new-array {v8, v9, v10}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    move-object v2, v1

    .line 38
    move/from16 v6, p4

    .line 39
    .line 40
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMaxItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/material/navigation/NavigationBarMenu;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 55
    .line 56
    .line 57
    iput-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iput-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 64
    .line 65
    new-instance v5, Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 66
    .line 67
    invoke-direct {v5, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iput-object v5, v0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMaxItemCount()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iput v6, v0, Lcom/google/android/material/navigation/NavigationBarView;->mMaxItemCount:I

    .line 77
    .line 78
    iput v6, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    .line 79
    .line 80
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    const/4 v7, -0x2

    .line 83
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    const/16 v7, 0x11

    .line 87
    .line 88
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    iget-object v6, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 94
    .line 95
    const/16 v7, 0xf

    .line 96
    .line 97
    const/4 v11, 0x3

    .line 98
    invoke-virtual {v6, v7, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    iput v7, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 103
    .line 104
    iput-object v4, v5, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 105
    .line 106
    const/4 v12, 0x1

    .line 107
    iput v12, v5, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    .line 108
    .line 109
    iput-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 110
    .line 111
    iget-object v13, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v3, v5, v13}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    invoke-virtual {v5, v13, v3}, Lcom/google/android/material/navigation/NavigationBarPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 121
    .line 122
    .line 123
    const/4 v3, 0x5

    .line 124
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_0

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList()Landroid/content/res/ColorStateList;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const v5, 0x7f071092

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/4 v5, 0x4

    .line 157
    invoke-virtual {v2, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    const/4 v13, 0x0

    .line 169
    if-eqz v3, :cond_4

    .line 170
    .line 171
    invoke-virtual {v2, v8, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    iput v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    .line 176
    .line 177
    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 178
    .line 179
    if-eqz v8, :cond_3

    .line 180
    .line 181
    array-length v14, v8

    .line 182
    move v15, v13

    .line 183
    :goto_1
    if-ge v15, v14, :cond_3

    .line 184
    .line 185
    aget-object v5, v8, v15

    .line 186
    .line 187
    if-nez v5, :cond_1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_1
    invoke-virtual {v5, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 191
    .line 192
    .line 193
    iget-object v11, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    if-eqz v11, :cond_2

    .line 196
    .line 197
    invoke-virtual {v5, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 201
    .line 202
    const/4 v5, 0x4

    .line 203
    const/4 v11, 0x3

    .line 204
    goto :goto_1

    .line 205
    :cond_3
    :goto_2
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 206
    .line 207
    if-eqz v5, :cond_4

    .line 208
    .line 209
    invoke-virtual {v5, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 210
    .line 211
    .line 212
    iget-object v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 213
    .line 214
    if-eqz v3, :cond_4

    .line 215
    .line 216
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 217
    .line 218
    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 219
    .line 220
    .line 221
    :cond_4
    invoke-virtual {v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_8

    .line 226
    .line 227
    invoke-virtual {v2, v10, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 232
    .line 233
    iput v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSeslLabelTextAppearance:I

    .line 234
    .line 235
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 236
    .line 237
    if-eqz v5, :cond_7

    .line 238
    .line 239
    array-length v8, v5

    .line 240
    move v10, v13

    .line 241
    :goto_3
    if-ge v10, v8, :cond_7

    .line 242
    .line 243
    aget-object v11, v5, v10

    .line 244
    .line 245
    if-nez v11, :cond_5

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_5
    invoke-virtual {v11, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 249
    .line 250
    .line 251
    iget-object v14, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 252
    .line 253
    if-eqz v14, :cond_6

    .line 254
    .line 255
    invoke-virtual {v11, v14}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 256
    .line 257
    .line 258
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_7
    :goto_4
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 262
    .line 263
    if-eqz v5, :cond_8

    .line 264
    .line 265
    invoke-virtual {v5, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    .line 266
    .line 267
    .line 268
    iget-object v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 269
    .line 270
    if-eqz v3, :cond_8

    .line 271
    .line 272
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 273
    .line 274
    invoke-virtual {v4, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 275
    .line 276
    .line 277
    :cond_8
    invoke-virtual {v2, v9}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_c

    .line 282
    .line 283
    invoke-virtual {v2, v9, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 288
    .line 289
    iput v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    .line 290
    .line 291
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 292
    .line 293
    if-eqz v5, :cond_b

    .line 294
    .line 295
    array-length v8, v5

    .line 296
    move v9, v13

    .line 297
    :goto_5
    if-ge v9, v8, :cond_b

    .line 298
    .line 299
    aget-object v10, v5, v9

    .line 300
    .line 301
    if-nez v10, :cond_9

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_9
    invoke-virtual {v10, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    .line 305
    .line 306
    .line 307
    iget-object v11, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 308
    .line 309
    if-eqz v11, :cond_a

    .line 310
    .line 311
    invoke-virtual {v10, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 312
    .line 313
    .line 314
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_b
    :goto_6
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 318
    .line 319
    if-eqz v5, :cond_c

    .line 320
    .line 321
    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 322
    .line 323
    if-eqz v8, :cond_c

    .line 324
    .line 325
    invoke-virtual {v5, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    .line 326
    .line 327
    .line 328
    iget-object v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 329
    .line 330
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 331
    .line 332
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 333
    .line 334
    .line 335
    :cond_c
    const/16 v3, 0xb

    .line 336
    .line 337
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_f

    .line 342
    .line 343
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 348
    .line 349
    iput-object v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 350
    .line 351
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 352
    .line 353
    if-eqz v5, :cond_e

    .line 354
    .line 355
    array-length v8, v5

    .line 356
    move v9, v13

    .line 357
    :goto_7
    if-ge v9, v8, :cond_e

    .line 358
    .line 359
    aget-object v10, v5, v9

    .line 360
    .line 361
    if-nez v10, :cond_d

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_d
    invoke-virtual {v10, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 365
    .line 366
    .line 367
    add-int/lit8 v9, v9, 0x1

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_e
    :goto_8
    iget-object v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 371
    .line 372
    if-eqz v5, :cond_f

    .line 373
    .line 374
    invoke-virtual {v5, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v13, v12}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setOverflowSpanColor(IZ)V

    .line 378
    .line 379
    .line 380
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    instance-of v4, v3, Landroid/graphics/drawable/ColorDrawable;

    .line 385
    .line 386
    if-eqz v4, :cond_10

    .line 387
    .line 388
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 389
    .line 390
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 391
    .line 392
    iput-object v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 393
    .line 394
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    if-eqz v3, :cond_11

    .line 399
    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    .line 405
    .line 406
    if-eqz v3, :cond_13

    .line 407
    .line 408
    :cond_11
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 409
    .line 410
    invoke-direct {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    .line 418
    .line 419
    if-eqz v5, :cond_12

    .line 420
    .line 421
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 422
    .line 423
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 432
    .line 433
    .line 434
    :cond_12
    invoke-virtual {v3, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 435
    .line 436
    .line 437
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 438
    .line 439
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 440
    .line 441
    .line 442
    :cond_13
    const/4 v3, 0x7

    .line 443
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_15

    .line 448
    .line 449
    invoke-virtual {v2, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 454
    .line 455
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 456
    .line 457
    if-eqz v4, :cond_15

    .line 458
    .line 459
    array-length v5, v4

    .line 460
    move v8, v13

    .line 461
    :goto_9
    if-ge v8, v5, :cond_15

    .line 462
    .line 463
    aget-object v9, v4, v8

    .line 464
    .line 465
    iget v10, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 466
    .line 467
    if-eq v10, v3, :cond_14

    .line 468
    .line 469
    iput v3, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    .line 470
    .line 471
    iget-object v10, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 472
    .line 473
    if-eqz v10, :cond_14

    .line 474
    .line 475
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 476
    .line 477
    .line 478
    move-result v10

    .line 479
    invoke-virtual {v9, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 480
    .line 481
    .line 482
    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_15
    const/4 v3, 0x6

    .line 486
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    if-eqz v4, :cond_17

    .line 491
    .line 492
    invoke-virtual {v2, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 497
    .line 498
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 499
    .line 500
    if-eqz v4, :cond_17

    .line 501
    .line 502
    array-length v5, v4

    .line 503
    move v8, v13

    .line 504
    :goto_a
    if-ge v8, v5, :cond_17

    .line 505
    .line 506
    aget-object v9, v4, v8

    .line 507
    .line 508
    iget v10, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    .line 509
    .line 510
    if-eq v10, v3, :cond_16

    .line 511
    .line 512
    iput v3, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    .line 513
    .line 514
    iget-object v10, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 515
    .line 516
    if-eqz v10, :cond_16

    .line 517
    .line 518
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 519
    .line 520
    .line 521
    move-result v10

    .line 522
    invoke-virtual {v9, v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    .line 523
    .line 524
    .line 525
    :cond_16
    add-int/lit8 v8, v8, 0x1

    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_17
    invoke-virtual {v2, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 529
    .line 530
    .line 531
    move-result v3

    .line 532
    if-eqz v3, :cond_18

    .line 533
    .line 534
    invoke-virtual {v2, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    int-to-float v3, v3

    .line 539
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationBarView;->setElevation(F)V

    .line 540
    .line 541
    .line 542
    :cond_18
    invoke-static {v1, v2, v13}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 555
    .line 556
    .line 557
    const/16 v3, 0xc

    .line 558
    .line 559
    const/4 v4, -0x1

    .line 560
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 565
    .line 566
    iget v5, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 567
    .line 568
    if-eq v5, v3, :cond_19

    .line 569
    .line 570
    iput v3, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 571
    .line 572
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 573
    .line 574
    invoke-virtual {v3, v13}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 575
    .line 576
    .line 577
    :cond_19
    const/4 v3, 0x3

    .line 578
    invoke-virtual {v2, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    if-eqz v4, :cond_1c

    .line 583
    .line 584
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 585
    .line 586
    iput v4, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 587
    .line 588
    iget-object v5, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 589
    .line 590
    if-eqz v5, :cond_1b

    .line 591
    .line 592
    array-length v6, v5

    .line 593
    move v8, v13

    .line 594
    :goto_b
    if-ge v8, v6, :cond_1b

    .line 595
    .line 596
    aget-object v9, v5, v8

    .line 597
    .line 598
    if-nez v9, :cond_1a

    .line 599
    .line 600
    goto :goto_c

    .line 601
    :cond_1a
    invoke-virtual {v9, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 602
    .line 603
    .line 604
    add-int/lit8 v8, v8, 0x1

    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_1b
    :goto_c
    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 608
    .line 609
    if-eqz v3, :cond_1d

    .line 610
    .line 611
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    .line 612
    .line 613
    .line 614
    goto :goto_e

    .line 615
    :cond_1c
    const/16 v3, 0x8

    .line 616
    .line 617
    invoke-static {v1, v2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 622
    .line 623
    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 624
    .line 625
    if-eqz v4, :cond_1d

    .line 626
    .line 627
    array-length v5, v4

    .line 628
    move v6, v13

    .line 629
    :goto_d
    if-ge v6, v5, :cond_1d

    .line 630
    .line 631
    aget-object v8, v4, v6

    .line 632
    .line 633
    iput-object v3, v8, Lcom/google/android/material/navigation/NavigationBarItemView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 634
    .line 635
    invoke-virtual {v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 636
    .line 637
    .line 638
    add-int/lit8 v6, v6, 0x1

    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_1d
    :goto_e
    const/4 v3, 0x2

    .line 642
    invoke-virtual {v2, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    if-eqz v4, :cond_29

    .line 647
    .line 648
    iget-object v5, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 649
    .line 650
    iget-object v5, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 651
    .line 652
    if-eqz v5, :cond_1f

    .line 653
    .line 654
    array-length v6, v5

    .line 655
    move v8, v13

    .line 656
    :goto_f
    if-ge v8, v6, :cond_1f

    .line 657
    .line 658
    aget-object v9, v5, v8

    .line 659
    .line 660
    iput-boolean v12, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    .line 661
    .line 662
    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 663
    .line 664
    .line 665
    iget-object v10, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 666
    .line 667
    if-eqz v10, :cond_1e

    .line 668
    .line 669
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 673
    .line 674
    .line 675
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    .line 676
    .line 677
    goto :goto_f

    .line 678
    :cond_1f
    sget-object v5, Lcom/google/android/material/R$styleable;->NavigationBarActiveIndicator:[I

    .line 679
    .line 680
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    iget-object v6, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 689
    .line 690
    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 691
    .line 692
    if-eqz v6, :cond_20

    .line 693
    .line 694
    array-length v8, v6

    .line 695
    move v9, v13

    .line 696
    :goto_10
    if-ge v9, v8, :cond_20

    .line 697
    .line 698
    aget-object v10, v6, v9

    .line 699
    .line 700
    iput v5, v10, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    .line 701
    .line 702
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    .line 703
    .line 704
    .line 705
    move-result v11

    .line 706
    invoke-virtual {v10, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 707
    .line 708
    .line 709
    add-int/lit8 v9, v9, 0x1

    .line 710
    .line 711
    goto :goto_10

    .line 712
    :cond_20
    invoke-virtual {v4, v13, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    iget-object v6, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 717
    .line 718
    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 719
    .line 720
    if-eqz v6, :cond_21

    .line 721
    .line 722
    array-length v8, v6

    .line 723
    move v9, v13

    .line 724
    :goto_11
    if-ge v9, v8, :cond_21

    .line 725
    .line 726
    aget-object v10, v6, v9

    .line 727
    .line 728
    iput v5, v10, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    .line 729
    .line 730
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    .line 731
    .line 732
    .line 733
    move-result v11

    .line 734
    invoke-virtual {v10, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 735
    .line 736
    .line 737
    add-int/lit8 v9, v9, 0x1

    .line 738
    .line 739
    goto :goto_11

    .line 740
    :cond_21
    const/4 v5, 0x3

    .line 741
    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    iget-object v5, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 746
    .line 747
    iget-object v5, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 748
    .line 749
    if-eqz v5, :cond_22

    .line 750
    .line 751
    array-length v8, v5

    .line 752
    move v9, v13

    .line 753
    :goto_12
    if-ge v9, v8, :cond_22

    .line 754
    .line 755
    aget-object v10, v5, v9

    .line 756
    .line 757
    iput v6, v10, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    .line 758
    .line 759
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    .line 760
    .line 761
    .line 762
    move-result v11

    .line 763
    invoke-virtual {v10, v11}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    .line 764
    .line 765
    .line 766
    add-int/lit8 v9, v9, 0x1

    .line 767
    .line 768
    goto :goto_12

    .line 769
    :cond_22
    invoke-static {v1, v4, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    iget-object v5, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 774
    .line 775
    iput-object v3, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 776
    .line 777
    iget-object v3, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 778
    .line 779
    const/4 v6, 0x0

    .line 780
    if-eqz v3, :cond_25

    .line 781
    .line 782
    array-length v8, v3

    .line 783
    move v9, v13

    .line 784
    :goto_13
    if-ge v9, v8, :cond_25

    .line 785
    .line 786
    aget-object v10, v3, v9

    .line 787
    .line 788
    iget-object v11, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 789
    .line 790
    if-eqz v11, :cond_23

    .line 791
    .line 792
    iget-object v11, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 793
    .line 794
    if-eqz v11, :cond_23

    .line 795
    .line 796
    new-instance v11, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 797
    .line 798
    iget-object v14, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 799
    .line 800
    invoke-direct {v11, v14}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 801
    .line 802
    .line 803
    iget-object v14, v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 804
    .line 805
    invoke-virtual {v11, v14}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 806
    .line 807
    .line 808
    goto :goto_14

    .line 809
    :cond_23
    move-object v11, v6

    .line 810
    :goto_14
    iget-object v14, v10, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 811
    .line 812
    if-nez v14, :cond_24

    .line 813
    .line 814
    goto :goto_15

    .line 815
    :cond_24
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v10}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 819
    .line 820
    .line 821
    :goto_15
    add-int/lit8 v9, v9, 0x1

    .line 822
    .line 823
    goto :goto_13

    .line 824
    :cond_25
    const/4 v3, 0x4

    .line 825
    invoke-virtual {v4, v3, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 826
    .line 827
    .line 828
    move-result v3

    .line 829
    sget-object v5, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/RelativeCornerSize;

    .line 830
    .line 831
    new-instance v5, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 832
    .line 833
    int-to-float v8, v13

    .line 834
    invoke-direct {v5, v8}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 835
    .line 836
    .line 837
    invoke-static {v1, v3, v13, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 846
    .line 847
    iput-object v1, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 848
    .line 849
    iget-object v1, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 850
    .line 851
    if-eqz v1, :cond_28

    .line 852
    .line 853
    array-length v5, v1

    .line 854
    move v8, v13

    .line 855
    :goto_16
    if-ge v8, v5, :cond_28

    .line 856
    .line 857
    aget-object v9, v1, v8

    .line 858
    .line 859
    iget-object v10, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 860
    .line 861
    if-eqz v10, :cond_26

    .line 862
    .line 863
    iget-object v10, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 864
    .line 865
    if-eqz v10, :cond_26

    .line 866
    .line 867
    new-instance v10, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 868
    .line 869
    iget-object v11, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 870
    .line 871
    invoke-direct {v10, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 872
    .line 873
    .line 874
    iget-object v11, v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 875
    .line 876
    invoke-virtual {v10, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 877
    .line 878
    .line 879
    goto :goto_17

    .line 880
    :cond_26
    move-object v10, v6

    .line 881
    :goto_17
    iget-object v11, v9, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 882
    .line 883
    if-nez v11, :cond_27

    .line 884
    .line 885
    goto :goto_18

    .line 886
    :cond_27
    invoke-virtual {v11, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    .line 890
    .line 891
    .line 892
    :goto_18
    add-int/lit8 v8, v8, 0x1

    .line 893
    .line 894
    goto :goto_16

    .line 895
    :cond_28
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    .line 897
    .line 898
    :cond_29
    const/16 v1, 0xd

    .line 899
    .line 900
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 901
    .line 902
    .line 903
    move-result v3

    .line 904
    if-eqz v3, :cond_2b

    .line 905
    .line 906
    invoke-virtual {v2, v1, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 911
    .line 912
    iput-boolean v12, v3, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 913
    .line 914
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 915
    .line 916
    if-nez v3, :cond_2a

    .line 917
    .line 918
    new-instance v3, Landroidx/appcompat/view/SupportMenuInflater;

    .line 919
    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    invoke-direct {v3, v4}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 925
    .line 926
    .line 927
    iput-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 928
    .line 929
    :cond_2a
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuInflater:Landroidx/appcompat/view/SupportMenuInflater;

    .line 930
    .line 931
    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 932
    .line 933
    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 934
    .line 935
    .line 936
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 937
    .line 938
    iput-boolean v13, v1, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    .line 939
    .line 940
    invoke-virtual {v1, v12}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 941
    .line 942
    .line 943
    :cond_2b
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 944
    .line 945
    .line 946
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 947
    .line 948
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 949
    .line 950
    .line 951
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 952
    .line 953
    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarView;->mSelectedCallback:Lcom/google/android/material/navigation/NavigationBarView$1;

    .line 954
    .line 955
    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 956
    .line 957
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarView;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 958
    .line 959
    iput-object v2, v1, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSelectedCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 960
    .line 961
    iget v1, v1, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    .line 962
    .line 963
    const/4 v2, 0x3

    .line 964
    if-eq v7, v2, :cond_2c

    .line 965
    .line 966
    iget v2, v0, Lcom/google/android/material/navigation/NavigationBarView;->mMaxItemCount:I

    .line 967
    .line 968
    if-ne v1, v2, :cond_2c

    .line 969
    .line 970
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    const v2, 0x7f07108f

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 978
    .line 979
    .line 980
    move-result v1

    .line 981
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 990
    .line 991
    .line 992
    goto :goto_19

    .line 993
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    const v2, 0x7f071090

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 1005
    .line 1006
    .line 1007
    move-result v2

    .line 1008
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1013
    .line 1014
    .line 1015
    :goto_19
    return-void
.end method


# virtual methods
.method public abstract createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
.end method

.method public abstract getMaxItemCount()I
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationBarView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
