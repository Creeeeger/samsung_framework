.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final badgeRadius:F

.field public final badgeWidePadding:F

.field public final badgeWithTextRadius:F

.field public final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field public final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 10
    .line 11
    if-nez p5, :cond_0

    .line 12
    .line 13
    new-instance p5, Lcom/google/android/material/badge/BadgeState$State;

    .line 14
    .line 15
    invoke-direct {p5}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iput p2, p5, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 21
    .line 22
    :cond_1
    iget p2, p5, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz p2, :cond_6

    .line 28
    .line 29
    const-string v3, "badge"

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v5, v0, :cond_3

    .line 44
    .line 45
    if-ne v5, v1, :cond_2

    .line 46
    .line 47
    :cond_3
    if-ne v5, v0, :cond_5

    .line 48
    .line 49
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 60
    .line 61
    .line 62
    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    move-object v4, p2

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    :try_start_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string p3, "Must have a <"

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p3, "> start tag"

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 98
    .line 99
    const-string p1, "No start tag found"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :catch_0
    move-exception p0

    .line 106
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 107
    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string p4, "Can\'t load badge resource ID #0x"

    .line 111
    .line 112
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_6
    const/4 p2, 0x0

    .line 134
    move-object v4, p2

    .line 135
    move v3, v2

    .line 136
    :goto_0
    if-nez v3, :cond_7

    .line 137
    .line 138
    move v7, p4

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    move v7, v3

    .line 141
    :goto_1
    sget-object v5, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 142
    .line 143
    new-array v8, v2, [I

    .line 144
    .line 145
    move-object v3, p1

    .line 146
    move v6, p3

    .line 147
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    const p4, 0x7f07088a

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result p4

    .line 162
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 163
    .line 164
    .line 165
    move-result p4

    .line 166
    int-to-float p4, p4

    .line 167
    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 168
    .line 169
    const p4, 0x7f070889

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    .line 174
    .line 175
    move-result p4

    .line 176
    const/4 v0, 0x4

    .line 177
    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 178
    .line 179
    .line 180
    move-result p4

    .line 181
    int-to-float p4, p4

    .line 182
    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    .line 183
    .line 184
    const p4, 0x7f07088f

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    const/4 p4, 0x5

    .line 192
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    int-to-float p3, p3

    .line 197
    iput p3, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 198
    .line 199
    iget-object p3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 200
    .line 201
    iget p4, p5, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 202
    .line 203
    const/4 v3, -0x2

    .line 204
    if-ne p4, v3, :cond_8

    .line 205
    .line 206
    const/16 p4, 0xff

    .line 207
    .line 208
    :cond_8
    iput p4, p3, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 209
    .line 210
    iget-object p4, p5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 211
    .line 212
    if-nez p4, :cond_9

    .line 213
    .line 214
    const p4, 0x7f130ba0

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p4

    .line 221
    :cond_9
    iput-object p4, p3, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 222
    .line 223
    iget-object p3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 224
    .line 225
    iget p4, p5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 226
    .line 227
    if-nez p4, :cond_a

    .line 228
    .line 229
    const p4, 0x7f110018

    .line 230
    .line 231
    .line 232
    :cond_a
    iput p4, p3, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 233
    .line 234
    iget p4, p5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 235
    .line 236
    if-nez p4, :cond_b

    .line 237
    .line 238
    const p4, 0x7f130bad

    .line 239
    .line 240
    .line 241
    :cond_b
    iput p4, p3, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 242
    .line 243
    iget-object p4, p5, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 244
    .line 245
    if-eqz p4, :cond_d

    .line 246
    .line 247
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result p4

    .line 251
    if-eqz p4, :cond_c

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_c
    move p4, v2

    .line 255
    goto :goto_3

    .line 256
    :cond_d
    :goto_2
    move p4, v1

    .line 257
    :goto_3
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object p4

    .line 261
    iput-object p4, p3, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 262
    .line 263
    iget-object p3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 264
    .line 265
    iget p4, p5, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 266
    .line 267
    if-ne p4, v3, :cond_e

    .line 268
    .line 269
    const/16 p4, 0x8

    .line 270
    .line 271
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 272
    .line 273
    .line 274
    move-result p4

    .line 275
    :cond_e
    iput p4, p3, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 276
    .line 277
    iget p3, p5, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 278
    .line 279
    if-eq p3, v3, :cond_f

    .line 280
    .line 281
    iget-object p4, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 282
    .line 283
    iput p3, p4, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_f
    const/16 p3, 0x9

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 289
    .line 290
    .line 291
    move-result p4

    .line 292
    if-eqz p4, :cond_10

    .line 293
    .line 294
    iget-object p4, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 295
    .line 296
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 297
    .line 298
    .line 299
    move-result p3

    .line 300
    iput p3, p4, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_10
    iget-object p3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 304
    .line 305
    const/4 p4, -0x1

    .line 306
    iput p4, p3, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 307
    .line 308
    :goto_4
    iget-object p3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 309
    .line 310
    iget-object p4, p5, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 311
    .line 312
    if-nez p4, :cond_11

    .line 313
    .line 314
    invoke-static {p1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 315
    .line 316
    .line 317
    move-result-object p4

    .line 318
    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 319
    .line 320
    .line 321
    move-result p4

    .line 322
    goto :goto_5

    .line 323
    :cond_11
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result p4

    .line 327
    :goto_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object p4

    .line 331
    iput-object p4, p3, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 332
    .line 333
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 334
    .line 335
    if-eqz p3, :cond_12

    .line 336
    .line 337
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 338
    .line 339
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_12
    const/4 p3, 0x3

    .line 343
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 344
    .line 345
    .line 346
    move-result p4

    .line 347
    if-eqz p4, :cond_13

    .line 348
    .line 349
    iget-object p4, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 350
    .line 351
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iput-object p1, p4, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_13
    new-instance p3, Lcom/google/android/material/resources/TextAppearance;

    .line 367
    .line 368
    const p4, 0x7f14043a

    .line 369
    .line 370
    .line 371
    invoke-direct {p3, p1, p4}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 375
    .line 376
    iget-object p3, p3, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 377
    .line 378
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object p3

    .line 386
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 387
    .line 388
    :goto_6
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 389
    .line 390
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 391
    .line 392
    if-nez p3, :cond_14

    .line 393
    .line 394
    const p3, 0x800035

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 398
    .line 399
    .line 400
    move-result p3

    .line 401
    goto :goto_7

    .line 402
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 403
    .line 404
    .line 405
    move-result p3

    .line 406
    :goto_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object p3

    .line 410
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 411
    .line 412
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 413
    .line 414
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 415
    .line 416
    if-nez p3, :cond_15

    .line 417
    .line 418
    const/4 p3, 0x6

    .line 419
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 420
    .line 421
    .line 422
    move-result p3

    .line 423
    goto :goto_8

    .line 424
    :cond_15
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result p3

    .line 428
    :goto_8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object p3

    .line 432
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 433
    .line 434
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 435
    .line 436
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 437
    .line 438
    if-nez p3, :cond_16

    .line 439
    .line 440
    const/16 p3, 0xa

    .line 441
    .line 442
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 443
    .line 444
    .line 445
    move-result p3

    .line 446
    goto :goto_9

    .line 447
    :cond_16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 448
    .line 449
    .line 450
    move-result p3

    .line 451
    :goto_9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object p3

    .line 455
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 456
    .line 457
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 458
    .line 459
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 460
    .line 461
    if-nez p3, :cond_17

    .line 462
    .line 463
    iget-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result p3

    .line 469
    const/4 p4, 0x7

    .line 470
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 471
    .line 472
    .line 473
    move-result p3

    .line 474
    goto :goto_a

    .line 475
    :cond_17
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result p3

    .line 479
    :goto_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object p3

    .line 483
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 484
    .line 485
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 486
    .line 487
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 488
    .line 489
    if-nez p3, :cond_18

    .line 490
    .line 491
    iget-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 492
    .line 493
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 494
    .line 495
    .line 496
    move-result p3

    .line 497
    const/16 p4, 0xb

    .line 498
    .line 499
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 500
    .line 501
    .line 502
    move-result p3

    .line 503
    goto :goto_b

    .line 504
    :cond_18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result p3

    .line 508
    :goto_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object p3

    .line 512
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 513
    .line 514
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 515
    .line 516
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 517
    .line 518
    if-nez p3, :cond_19

    .line 519
    .line 520
    move p3, v2

    .line 521
    goto :goto_c

    .line 522
    :cond_19
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 523
    .line 524
    .line 525
    move-result p3

    .line 526
    :goto_c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object p3

    .line 530
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 531
    .line 532
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 533
    .line 534
    iget-object p3, p5, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 535
    .line 536
    if-nez p3, :cond_1a

    .line 537
    .line 538
    goto :goto_d

    .line 539
    :cond_1a
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object p3

    .line 547
    iput-object p3, p1, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 548
    .line 549
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 550
    .line 551
    .line 552
    iget-object p1, p5, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 553
    .line 554
    if-nez p1, :cond_1b

    .line 555
    .line 556
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 557
    .line 558
    sget-object p2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 559
    .line 560
    invoke-static {p2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 561
    .line 562
    .line 563
    move-result-object p2

    .line 564
    iput-object p2, p1, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 565
    .line 566
    goto :goto_e

    .line 567
    :cond_1b
    iget-object p2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 568
    .line 569
    iput-object p1, p2, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 570
    .line 571
    :goto_e
    iput-object p5, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 572
    .line 573
    return-void
.end method
