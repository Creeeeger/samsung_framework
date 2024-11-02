.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Comparable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/media/SecMediaHost;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Comparable;

    .line 15
    .line 16
    check-cast p0, Landroid/content/res/Configuration;

    .line 17
    .line 18
    check-cast p1, Lcom/android/systemui/media/MediaType;

    .line 19
    .line 20
    check-cast p2, Landroid/view/View;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getViewPager(Lcom/android/systemui/media/MediaType;)Landroidx/viewpager/widget/ViewPager;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v6}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v7, v2

    .line 52
    :goto_0
    iget-object v8, v0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 53
    .line 54
    check-cast v8, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 55
    .line 56
    invoke-virtual {v8, v7}, Lcom/android/systemui/log/MediaLoggerImpl;->onConfigChanged(I)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, v0, Lcom/android/systemui/media/SecMediaHost;->mUpdatePlayers:Z

    .line 60
    .line 61
    iget-object v7, v0, Lcom/android/systemui/media/SecMediaHost;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const v8, 0x7f070eda

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    iput v7, v0, Lcom/android/systemui/media/SecMediaHost;->mPagerMargin:I

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/View;->invalidateOutline()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    iget-object p2, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setPlayerBarExpansion()V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget p2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 91
    .line 92
    iget v7, v0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    .line 93
    .line 94
    if-ne v7, p2, :cond_4

    .line 95
    .line 96
    iget-boolean v7, v0, Lcom/android/systemui/media/SecMediaHost;->mPlayerNeedForceUpdate:Z

    .line 97
    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move p2, v2

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    :goto_1
    iput p2, v0, Lcom/android/systemui/media/SecMediaHost;->mOrientation:I

    .line 104
    .line 105
    move p2, v1

    .line 106
    :goto_2
    if-nez p2, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 114
    .line 115
    new-instance v5, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda6;

    .line 116
    .line 117
    invoke-direct {v5, v0, p1, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/MediaType;I)V

    .line 118
    .line 119
    .line 120
    if-nez p2, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p2, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    new-instance p2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;

    .line 135
    .line 136
    invoke-direct {p2, p0, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Comparable;I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v6, p2}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    iget p2, v0, Lcom/android/systemui/media/SecMediaHost;->mIsRTL:I

    .line 147
    .line 148
    if-eq p2, p0, :cond_7

    .line 149
    .line 150
    iput p0, v0, Lcom/android/systemui/media/SecMediaHost;->mIsRTL:I

    .line 151
    .line 152
    move p0, v1

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    move p0, v2

    .line 155
    :goto_4
    if-eqz p0, :cond_9

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-eqz p2, :cond_8

    .line 162
    .line 163
    iget-object p2, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 164
    .line 165
    iget-object v5, p2, Lcom/android/systemui/media/CarouselHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 166
    .line 167
    invoke-interface {v5}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    iget-object p2, p2, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 172
    .line 173
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 174
    .line 175
    .line 176
    :cond_8
    new-instance p2, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;

    .line 177
    .line 178
    invoke-direct {p2, p1, v3}, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;-><init>(Lcom/android/systemui/media/MediaType;Lcom/android/systemui/media/ViewPagerHelper;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p0, :cond_a

    .line 189
    .line 190
    iget p0, v0, Lcom/android/systemui/media/SecMediaHost;->mIsRTL:I

    .line 191
    .line 192
    if-eq p0, v1, :cond_a

    .line 193
    .line 194
    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(ZLcom/android/systemui/media/MediaType;)I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    sub-int/2addr p0, v1

    .line 199
    sub-int p2, p0, p2

    .line 200
    .line 201
    :cond_a
    invoke-virtual {v3, p2, v2, p1}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    .line 202
    .line 203
    .line 204
    iput-boolean v2, v0, Lcom/android/systemui/media/SecMediaHost;->mUpdatePlayers:Z

    .line 205
    .line 206
    :goto_5
    return-void

    .line 207
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Lcom/android/systemui/media/SecMediaHost$2;

    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Comparable;

    .line 212
    .line 213
    check-cast p0, Ljava/lang/String;

    .line 214
    .line 215
    check-cast p1, Lcom/android/systemui/media/MediaType;

    .line 216
    .line 217
    check-cast p2, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget-object v0, v0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 230
    .line 231
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/media/SecMediaHost;->removePlayer(Lcom/android/systemui/media/MediaType;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-nez p0, :cond_c

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    if-eqz p0, :cond_b

    .line 249
    .line 250
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 251
    .line 252
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/CarouselHelper;->removeSentinels(Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 253
    .line 254
    .line 255
    :cond_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_c
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 262
    .line 263
    invoke-virtual {v3, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getCurrentPage(Lcom/android/systemui/media/MediaType;)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-le v4, p0, :cond_d

    .line 268
    .line 269
    invoke-virtual {v3, p0, v1, p1}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    .line 270
    .line 271
    .line 272
    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-eqz p0, :cond_e

    .line 277
    .line 278
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 287
    .line 288
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/media/SecMediaHost;->updateCapsule(Lcom/android/systemui/media/SecMediaControlPanel;Z)V

    .line 289
    .line 290
    .line 291
    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-nez p0, :cond_f

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_f
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 299
    .line 300
    iget-object p2, p0, Lcom/android/systemui/media/CarouselHelper;->contextSupplier:Ljava/util/function/Supplier;

    .line 301
    .line 302
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    check-cast p2, Landroid/content/Context;

    .line 307
    .line 308
    const v1, 0x7f0603d6

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    const/16 v1, 0xb4

    .line 316
    .line 317
    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 322
    .line 323
    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 324
    .line 325
    iput v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    .line 326
    .line 327
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorNumberPages()V

    .line 330
    .line 331
    .line 332
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 333
    .line 334
    invoke-virtual {v3, p1}, Lcom/android/systemui/media/ViewPagerHelper;->getCurrentPage(Lcom/android/systemui/media/MediaType;)I

    .line 335
    .line 336
    .line 337
    move-result p2

    .line 338
    add-int/lit8 p2, p2, -0x1

    .line 339
    .line 340
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 341
    .line 342
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    .line 343
    .line 344
    .line 345
    :goto_7
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    if-eqz p0, :cond_10

    .line 350
    .line 351
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCarouselHelper:Lcom/android/systemui/media/CarouselHelper;

    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/media/CarouselHelper;->updatePageIndicatorVisibility()V

    .line 354
    .line 355
    .line 356
    :cond_10
    iget-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 357
    .line 358
    if-nez p0, :cond_11

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController$4;->onBarHeightChanged()V

    .line 362
    .line 363
    .line 364
    :goto_8
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
