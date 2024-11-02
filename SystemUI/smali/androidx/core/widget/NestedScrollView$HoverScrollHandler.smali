.class public final Landroidx/core/widget/NestedScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mScrollView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 8
    .line 9
    if-eqz p0, :cond_14

    .line 10
    .line 11
    sget v0, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    .line 12
    .line 13
    iget p1, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq p1, v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mHoverRecognitionStartTime:J

    .line 29
    .line 30
    sub-long v2, v0, v2

    .line 31
    .line 32
    const-wide/16 v4, 0x3e8

    .line 33
    .line 34
    div-long/2addr v2, v4

    .line 35
    iput-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mHoverRecognitionDurationTime:J

    .line 36
    .line 37
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollStartTime:J

    .line 38
    .line 39
    sub-long/2addr v0, v2

    .line 40
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollTimeInterval:J

    .line 41
    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-gez v0, :cond_1

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/high16 v1, 0x41200000    # 10.0f

    .line 59
    .line 60
    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/high16 v1, 0x3f000000    # 0.5f

    .line 65
    .line 66
    add-float/2addr v0, v1

    .line 67
    float-to-int v0, v0

    .line 68
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    .line 69
    .line 70
    iget-wide v1, p0, Landroidx/core/widget/NestedScrollView;->mHoverRecognitionDurationTime:J

    .line 71
    .line 72
    const-wide/16 v3, 0x2

    .line 73
    .line 74
    cmp-long v3, v1, v3

    .line 75
    .line 76
    const-wide/16 v4, 0x4

    .line 77
    .line 78
    if-lez v3, :cond_2

    .line 79
    .line 80
    cmp-long v3, v1, v4

    .line 81
    .line 82
    if-gez v3, :cond_2

    .line 83
    .line 84
    int-to-double v1, v0

    .line 85
    const-wide v3, 0x3fb999999999999aL    # 0.1

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    mul-double/2addr v1, v3

    .line 91
    double-to-int v1, v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    cmp-long v3, v1, v4

    .line 97
    .line 98
    const-wide/16 v4, 0x5

    .line 99
    .line 100
    if-ltz v3, :cond_3

    .line 101
    .line 102
    cmp-long v3, v1, v4

    .line 103
    .line 104
    if-gez v3, :cond_3

    .line 105
    .line 106
    int-to-double v1, v0

    .line 107
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    mul-double/2addr v1, v3

    .line 113
    double-to-int v1, v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    cmp-long v1, v1, v4

    .line 119
    .line 120
    if-ltz v1, :cond_4

    .line 121
    .line 122
    int-to-double v1, v0

    .line 123
    const-wide v3, 0x3fd3333333333333L    # 0.3

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    mul-double/2addr v1, v3

    .line 129
    double-to-int v1, v1

    .line 130
    add-int/2addr v0, v1

    .line 131
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    .line 132
    .line 133
    :cond_4
    :goto_0
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollDirection:I

    .line 134
    .line 135
    const/4 v7, -0x1

    .line 136
    const/4 v1, 0x2

    .line 137
    if-ne v0, v1, :cond_5

    .line 138
    .line 139
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    .line 140
    .line 141
    mul-int/2addr v0, v7

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollSpeed:I

    .line 144
    .line 145
    mul-int/2addr v0, v6

    .line 146
    :goto_1
    move v8, v0

    .line 147
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 148
    .line 149
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    if-gez v8, :cond_6

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-gtz v0, :cond_7

    .line 160
    .line 161
    :cond_6
    if-lez v8, :cond_c

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-ge v0, p1, :cond_c

    .line 168
    .line 169
    :cond_7
    invoke-virtual {p0, v1, v6}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 170
    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    const/4 v4, 0x0

    .line 174
    const/4 v5, 0x0

    .line 175
    const/4 v3, 0x1

    .line 176
    move-object v0, p0

    .line 177
    move v2, v8

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(III[I[I)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_8

    .line 183
    .line 184
    invoke-virtual {p0, v9, v8}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy$1(II)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_8
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mHasNestedScrollRange:Z

    .line 189
    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_9

    .line 197
    .line 198
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    .line 199
    .line 200
    if-eqz p1, :cond_b

    .line 201
    .line 202
    :cond_9
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    .line 203
    .line 204
    sub-int/2addr p1, v8

    .line 205
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    .line 206
    .line 207
    if-gez p1, :cond_a

    .line 208
    .line 209
    iput v9, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_a
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mNestedScrollRange:I

    .line 213
    .line 214
    if-le p1, v0, :cond_b

    .line 215
    .line 216
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mRemainNestedScrollRange:I

    .line 217
    .line 218
    :cond_b
    :goto_2
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->mHoverHandler:Landroidx/core/widget/NestedScrollView$HoverScrollHandler;

    .line 219
    .line 220
    const-wide/16 v0, 0x7

    .line 221
    .line 222
    invoke-virtual {p0, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_d

    .line 232
    .line 233
    if-ne v0, v6, :cond_e

    .line 234
    .line 235
    if-lez p1, :cond_e

    .line 236
    .line 237
    :cond_d
    move v9, v6

    .line 238
    :cond_e
    if-eqz v9, :cond_13

    .line 239
    .line 240
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    .line 241
    .line 242
    if-nez p1, :cond_13

    .line 243
    .line 244
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->mHoverScrollDirection:I

    .line 245
    .line 246
    const/16 v0, 0x2710

    .line 247
    .line 248
    if-ne p1, v1, :cond_f

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    sub-int/2addr p1, v1

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    sub-int/2addr p1, v1

    .line 264
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-virtual {v1, p1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-nez p1, :cond_10

    .line 285
    .line 286
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_f
    if-ne p1, v6, :cond_10

    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    sub-int/2addr p1, v1

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    sub-int/2addr p1, v1

    .line 308
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 309
    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    invoke-virtual {v1, p1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 318
    .line 319
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 320
    .line 321
    .line 322
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 323
    .line 324
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-nez p1, :cond_10

    .line 329
    .line 330
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 333
    .line 334
    .line 335
    :cond_10
    :goto_3
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_11

    .line 342
    .line 343
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-nez p1, :cond_12

    .line 350
    .line 351
    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 352
    .line 353
    .line 354
    :cond_12
    iput-boolean v6, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    .line 355
    .line 356
    :cond_13
    if-nez v9, :cond_14

    .line 357
    .line 358
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    .line 359
    .line 360
    if-nez p1, :cond_14

    .line 361
    .line 362
    iput-boolean v6, p0, Landroidx/core/widget/NestedScrollView;->mIsHoverOverscrolled:Z

    .line 363
    .line 364
    :cond_14
    :goto_4
    return-void
.end method
