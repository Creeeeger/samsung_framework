.class public final Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 4
    .line 5
    aget-object p1, v1, p1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p2, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d02cf

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 24
    .line 25
    iget-boolean p3, p3, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    move p3, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p3, 0x4

    .line 32
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    const p3, 0x1020016

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    const v2, 0x1020010

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/TextView;

    .line 52
    .line 53
    const v4, 0x1020006

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/widget/ImageView;

    .line 61
    .line 62
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconVisibility:Z

    .line 63
    .line 64
    const/16 v6, 0x8

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->itemPaddingAboveBelow:I

    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-virtual {p2, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1textSize:F

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    cmpl-float v8, v5, v7

    .line 86
    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2textSize:F

    .line 93
    .line 94
    cmpl-float v5, v0, v7

    .line 95
    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconResId:I

    .line 102
    .line 103
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    iget-boolean v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 126
    .line 127
    iget-object v3, v3, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const v5, 0x7f070b84

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    .line 142
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    .line 144
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 154
    .line 155
    iget v3, v3, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    .line 156
    .line 157
    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-virtual {v4}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    invoke-virtual {v0, v3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 172
    .line 173
    iget-object v3, v3, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const v5, 0x7f0604cb

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    check-cast p3, Landroid/widget/TextView;

    .line 194
    .line 195
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    .line 201
    .line 202
    const v3, 0x7f0604c2

    .line 203
    .line 204
    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const v3, 0x7f0b00d5

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 250
    .line 251
    if-eqz v5, :cond_9

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_9
    const v3, 0x7f0604ce

    .line 255
    .line 256
    .line 257
    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    const/high16 v0, 0x3f800000    # 1.0f

    .line 265
    .line 266
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 267
    .line 268
    .line 269
    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Landroid/widget/TextView;

    .line 274
    .line 275
    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 276
    .line 277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    const/4 v3, 0x1

    .line 282
    xor-int/2addr v2, v3

    .line 283
    if-eqz v2, :cond_a

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_a
    const/4 v3, 0x2

    .line 287
    :goto_5
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 288
    .line 289
    .line 290
    if-eqz v2, :cond_b

    .line 291
    .line 292
    move v3, v1

    .line 293
    goto :goto_6

    .line 294
    :cond_b
    move v3, v6

    .line 295
    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    const/4 v3, 0x0

    .line 299
    if-eqz v2, :cond_c

    .line 300
    .line 301
    iget-object v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_c
    move-object v2, v3

    .line 305
    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 309
    .line 310
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    iget-boolean v5, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 317
    .line 318
    if-eqz v5, :cond_d

    .line 319
    .line 320
    const v5, 0x7f0604cf

    .line 321
    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_d
    const v5, 0x7f0604d0

    .line 325
    .line 326
    .line 327
    :goto_8
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    .line 333
    .line 334
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 335
    .line 336
    if-nez v2, :cond_e

    .line 337
    .line 338
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 339
    .line 340
    .line 341
    :cond_e
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isDisabled:Z

    .line 342
    .line 343
    if-eqz v2, :cond_f

    .line 344
    .line 345
    const-string v2, "QSDetailItems"

    .line 346
    .line 347
    const-string v3, "getView(): item is disabled"

    .line 348
    .line 349
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    iput-boolean v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 353
    .line 354
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 355
    .line 356
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    const v3, 0x7f060013

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    .line 371
    .line 372
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 373
    .line 374
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    const v3, 0x7f060012

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    .line 389
    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 391
    .line 392
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const v2, 0x7f060011

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 406
    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_f
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 410
    .line 411
    .line 412
    :goto_9
    const-string/jumbo v0, "sec"

    .line 413
    .line 414
    .line 415
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    .line 420
    .line 421
    if-eqz v2, :cond_10

    .line 422
    .line 423
    const/16 v2, 0x258

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_10
    const/16 v2, 0x190

    .line 427
    .line 428
    :goto_a
    invoke-static {v0, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 433
    .line 434
    .line 435
    new-instance p3, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    .line 436
    .line 437
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    const p0, 0x1020008

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    check-cast p0, Landroid/widget/ImageView;

    .line 451
    .line 452
    const/4 p3, -0x1

    .line 453
    iget p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    .line 454
    .line 455
    if-eq p1, p3, :cond_11

    .line 456
    .line 457
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 464
    .line 465
    .line 466
    goto :goto_b

    .line 467
    :cond_11
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    :goto_b
    return-object p2
.end method
