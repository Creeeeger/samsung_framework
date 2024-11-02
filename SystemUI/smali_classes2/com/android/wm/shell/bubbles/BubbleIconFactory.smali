.class public Lcom/android/wm/shell/bubbles/BubbleIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f070153

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getCircledBubble(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 2
    .line 3
    const v1, 0x7f070153

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v3, Landroid/graphics/Canvas;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/high16 v3, 0x3f800000    # 1.0f

    .line 79
    .line 80
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const v1, 0x7f070e44

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const v3, 0x7f070e43

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    int-to-float v1, v1

    .line 123
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 124
    .line 125
    invoke-static {p1, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    new-instance v4, Landroid/graphics/Canvas;

    .line 130
    .line 131
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    new-instance v5, Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .line 138
    .line 139
    if-eqz p2, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const v6, 0x7f060555

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const v6, 0x7f070e46

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    goto :goto_1

    .line 171
    :cond_4
    const v6, -0xbbbbbc

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    .line 176
    .line 177
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    .line 178
    .line 179
    if-eqz p2, :cond_5

    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    div-int/lit8 v7, v7, 0x2

    .line 186
    .line 187
    div-int/lit8 v8, p1, 0x2

    .line 188
    .line 189
    sub-int/2addr v7, v8

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    move v7, v2

    .line 192
    :goto_2
    if-eqz p2, :cond_6

    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    div-int/lit8 v8, v8, 0x2

    .line 199
    .line 200
    div-int/lit8 v9, p1, 0x2

    .line 201
    .line 202
    sub-int/2addr v8, v9

    .line 203
    goto :goto_3

    .line 204
    :cond_6
    move v8, v2

    .line 205
    :goto_3
    if-eqz p2, :cond_7

    .line 206
    .line 207
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    div-int/lit8 v9, v9, 0x2

    .line 212
    .line 213
    div-int/lit8 v10, p1, 0x2

    .line 214
    .line 215
    add-int/2addr v10, v9

    .line 216
    goto :goto_4

    .line 217
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    :goto_4
    if-eqz p2, :cond_8

    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    div-int/lit8 p2, p2, 0x2

    .line 228
    .line 229
    div-int/lit8 p1, p1, 0x2

    .line 230
    .line 231
    add-int/2addr p1, p2

    .line 232
    goto :goto_5

    .line 233
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    :goto_5
    invoke-direct {v6, v7, v8, v10, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .line 239
    .line 240
    const/4 p1, 0x1

    .line 241
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    div-int/lit8 p1, p1, 0x2

    .line 252
    .line 253
    int-to-float p1, p1

    .line 254
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    div-int/lit8 p2, p2, 0x2

    .line 259
    .line 260
    int-to-float p2, p2

    .line 261
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    div-int/lit8 v2, v2, 0x2

    .line 266
    .line 267
    int-to-float v2, v2

    .line 268
    sub-float/2addr v2, v1

    .line 269
    invoke-virtual {v4, p1, p2, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 273
    .line 274
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 275
    .line 276
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 280
    .line 281
    .line 282
    const/4 p1, 0x0

    .line 283
    invoke-virtual {v4, v0, p1, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 284
    .line 285
    .line 286
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    const p1, 0x7f060554

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    .line 301
    .line 302
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    .line 303
    .line 304
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 305
    .line 306
    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    div-int/lit8 p0, p0, 0x2

    .line 317
    .line 318
    int-to-float p0, p0

    .line 319
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    div-int/lit8 p1, p1, 0x2

    .line 324
    .line 325
    int-to-float p1, p1

    .line 326
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    div-int/lit8 p2, p2, 0x2

    .line 331
    .line 332
    int-to-float p2, p2

    .line 333
    invoke-virtual {v4, p0, p1, p2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 334
    .line 335
    .line 336
    return-object v3
.end method
